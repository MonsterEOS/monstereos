const logPetCreated = (state: any) => {
  console.info("Pet Created ===> State updated:\n", JSON.stringify(state, null, 2))
}

const effects = [
  {
    actionType: "monstereosio::createpet",
    effect: logPetCreated,
  },
]

export { effects }
