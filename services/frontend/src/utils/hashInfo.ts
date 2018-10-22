import ecc from "eosjs-ecc"
import * as ser from "eosjs2/dist/eosjs2-serialize"
import { loadMonstersContract } from "./eos"

const HASH_INFO_KEY = "hashInfo"

export const getHashInfo = () => {
  const hashInfoJson = localStorage.getItem(HASH_INFO_KEY)
  return hashInfoJson ? JSON.parse(hashInfoJson) : null
}

const generateRandoms = () => {
  const randomArray = new Uint8Array(32)
  window.crypto.getRandomValues(randomArray)
  return Array.from(randomArray)
}

export const pickHash = async (data: any) => {
  const abiHandler = await loadMonstersContract()

  console.info(abiHandler)

  const pickStructType = abiHandler.types.get("st_pick")

  console.info(pickStructType)

  console.info(data)

  if (pickStructType) {
    const buffer = new ser.SerialBuffer()

    console.info("SerialBuffer >>> ", buffer)

    pickStructType.serialize(buffer, data)

    // console.info("abiData >>>", abiData, "now starting to encrypt sha256...")

    return ecc.sha256(buffer.asUint8Array(), "hex")
  } else {
    throw new Error("Invalid structure for pickHash - st_pick")
  }
}

// generate secret and hash random pair
export const generateHashInfo = async (pets: number[]) => {
  // generate secret
  const data = {
    pets,
    randoms: generateRandoms(),
  }

  const secret = await pickHash(data)
  console.info("hash generation >>>> ", secret)

  const secretPair = { data, secret }
  console.info("saving hashInfo", secretPair)
  localStorage.setItem(HASH_INFO_KEY, JSON.stringify(secretPair))
  return secretPair
}

// destroy last battle commitment random pair
export const destroyHashInfo = () => {
  console.info("removing hashInfo")
  localStorage.removeItem(HASH_INFO_KEY)
}
