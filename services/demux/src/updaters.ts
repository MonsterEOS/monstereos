import { BlockInfo } from "demux"

const createPet = async (db: any, payload: any, blockInfo: BlockInfo) => {

  console.info("\n\n==== Create Pet Updater ====")
  console.info("\n\nUpdater Payload >>> \n", payload)
  console.info("\n\nUpdater Block Info >>> \n", blockInfo)

  const data = {
    owner: payload.data.owner,
    pet_name: payload.data.pet_name,
    created_block: blockInfo.blockNumber,
    created_trx: payload.transactionId,
    created_at: blockInfo.timestamp,
    created_eosacc: payload.authorization[0].actor,
  }

  console.info("DB Data to Insert >>> ", data)

  const res = await db.pets.insert(data)

  console.info("DB State Result >>> ", res)
}

const addpettype = async (db: any, payload: any, blockInfo: BlockInfo) => {

  console.info("\n\n==== Create Element Updater ====")
  console.info("\n\nUpdater Payload >>> \n", payload)
  console.info("\n\nUpdater Block Info >>> \n", blockInfo)

  const data = {
    elements: payload.data.elements,
    created_block: blockInfo.blockNumber,
    created_trx: payload.transactionId,
    created_at: blockInfo.timestamp,
    created_eosacc: payload.authorization[0].actor,
  }

  console.info("DB Data to Insert >>> ", data)

  const res = await db.types.insert(data)

  console.info("DB State Result >>> ", res)
}

const addelemttype = async (db: any, payload: any, blockInfo: BlockInfo) => {

  console.info("\n\n==== Create Element Type ====")
  console.info("\n\nUpdater Payload >>> \n", payload)
  console.info("\n\nUpdater Block Info >>> \n", blockInfo)

  const data = {
    ratios: payload.data.ratios,
    created_block: blockInfo.blockNumber,
    created_trx: payload.transactionId,
    created_at: blockInfo.timestamp,
    created_eosacc: payload.authorization[0].actor,
  }

  console.info("DB Data to Insert >>> ", data)

  const res = await db.elements.insert(data)

  console.info("DB State Result >>> ", res)

}

const updaters = [
  {
    actionType: "monstereosio::createpet",
    updater: createPet,
  },
  {
    actionType: "monstereosio::addpettype",
    updater: addpettype,
  },
  {
    actionType: "monstereosio::addelemttype",
    updater: addelemttype,
  },
]

export { updaters }
