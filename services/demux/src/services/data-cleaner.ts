import { Rpc } from "eosjs2"
import massive from "massive"
import fetch from "node-fetch"

const NODEOS = process.env.CHAIN_HOST || "http://localhost:8830"
const rpc = new Rpc.JsonRpc(NODEOS, { fetch })

const dbConfig = {
  user: process.env.DB_USER || "user",
  password: process.env.DB_PASSWORD || "pass",
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5432,
  database: process.env.DB_NAME || "monstereosio",
  schema: process.env.DB_SCHEMA || "pets",
}

const updatePetsWithoutTypes = async (db: any) => {
  try {
    const pendingPets = await db.pets.find({type_id: -1, destroyed_at: "1970-01-01 00:00:00"})

    if (pendingPets.length) {
      console.info(pendingPets.length + " Pets to Update Type")

      const pendingPetsChain = pendingPets.map((pet: any) => {
        return rpc.get_table_rows({
          json: true,
          code: "monstereosio",
          scope: "monstereosio",
          table: "pets",
          lower_bound: pet.id,
          limit: 1,
        }).then((res: any) => res.rows[0])
      })

      const pendingPetsChainRes = await Promise.all(pendingPetsChain)

      const updatedPets = pendingPets.map((pet: any) => {
        const chainPet: any = pendingPetsChainRes.find((p: any) => p.id === pet.id)
        return {id: pet.id, type_id: chainPet ? chainPet.type : -1 }
      })
      .filter((pet: any) => pet.type_id >= 0)
      .map((pet: any) => (db.pets.save(pet)))

      console.info(updatedPets)

      if (updatedPets.length) {
        await Promise.all(updatedPets)
      }
    }
  } catch (error) {
    console.error("Fail to update data", error)
  }
}

// clean old arenas
const cleanOldArenas = async (_db: any) => {
  // TODO: implement
}

// main loop that read and updates data
const loop = async (db: any) => {

  console.info("Data Cleaner Loop")

  await updatePetsWithoutTypes(db)

  await cleanOldArenas(db)

  setTimeout(() => loop(db), 500)

}

const init = async () => {
  const db = await massive(dbConfig)
  loop(db[dbConfig.schema])
}

init()
