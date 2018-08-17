const createPet = async (db: any, payload: any) => {

  const { owner, pet_name } = payload.data

  try {
    await db.pets.insert({
      owner,
      pet_name,
    })
  } catch (error) {
    console.error(error)
  }
}

const updaters = [
  {
    actionType: "monstereosio::createpet",
    updater: createPet,
  },
]

export { updaters }
