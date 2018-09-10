const logPetCreated = (_: any, payload: any) => {
  console.info("Pet Created ===> Payload:\n", payload)
}

const effects = [
  {
    actionType: "monstereosio::createpet",
    effect: logPetCreated,
  },
]

export { effects }
