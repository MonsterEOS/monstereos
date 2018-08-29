import { getEosAuthorization, getContract, getEosAccount } from "./scatter"
import {
  Rpc as e2Rpc,
  // SignatureProvider as e2SignatureProvider,
  // Api as e2Api
} from "eosjs2"
import { parseBattlesFromChain, parseConfigFromChain } from "../modules/battles/battles"
import { initialGlobalConfig, loadConfig, GlobalConfig } from "../store"
import { generateHashInfo, destroyHashInfo } from "./hashInfo"
import { parseMonstersFromChain } from "../modules/monsters/monsters"

// chain info constants
const CHAIN_PROTOCOL = process.env.REACT_APP_CHAIN_PROTOCOL || "http"
const CHAIN_HOST = process.env.REACT_APP_CHAIN_HOST || "localhost"
const CHAIN_PORT = process.env.REACT_APP_CHAIN_PORT || "8830"
const CHAIN_URL = `${CHAIN_PROTOCOL}://${CHAIN_HOST}:${CHAIN_PORT}`
export const CHAIN_ID = "cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f"

// contract constants
export const MONSTERS_ACCOUNT = "monstereosio"
export const MONSTERS_TABLE = "pets"
export const BATTLES_TABLE = "battles"
export const ELEMENTS_TABLE = "elements"
export const PET_TYPES_TABLE = "pettypes"
export const CONFIG_TABLE = "petconfig2"
export const BALANCES_TABLE = "accounts"
export const TOKEN_SYMBOL = "EOS"
export const MEMO = "MonsterEOS Wallet Deposit"

// battle resources
export const BATTLE_REQ_CPU = 30 * 1000
export const BATTLE_REQ_NET = 2 * 1000

export const network = {
  protocol: CHAIN_PROTOCOL,
  blockchain: "eos",
  host: CHAIN_HOST,
  port: CHAIN_PORT,
  chainId: CHAIN_ID
}

export const trxPet = async (
  action: string,
  scatter: any,
  petId: number,
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)

  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)

  // feedpet, bedpet, awakepet
  return contract[action](petId, eosAuthorization.permission)
}

export const trxCreatePet = async (
  scatter: any,
  petName: string,
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const eosAccount = getEosAccount(scatter.identity)

  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)

  return contract.createpet(eosAccount, petName, eosAuthorization.permission)
}

// eos api
const e2DefaultRpc = new e2Rpc.JsonRpc(CHAIN_URL, { fetch })

export const loadArenas = () => {
  return e2DefaultRpc.get_table_rows({
    json: true,
    code: MONSTERS_ACCOUNT,
    scope: MONSTERS_ACCOUNT,
    table: BATTLES_TABLE,
    limit: 5000
  }).then((res: any) => {
    return res.rows.map(parseBattlesFromChain)
  })
}

export const loadGlobalConfig = async (store: any) => {
  const config = await e2DefaultRpc.get_table_rows({
    json: true,
    code: MONSTERS_ACCOUNT,
    scope: MONSTERS_ACCOUNT,
    table: CONFIG_TABLE,
    limit: 5000
  }).then((res: any) => {
    const configs = res.rows.map(parseConfigFromChain)
    return configs.length ? configs[0] : initialGlobalConfig
  })

  store.dispatch(loadConfig(config))
}

export const loadPets = async (id?: number) => {
  const apiList = (lowerBound = 0, limit = 5000): any => {
    return e2DefaultRpc.get_table_rows({
        json: true,
        scope: MONSTERS_ACCOUNT,
        code: MONSTERS_ACCOUNT,
        table: MONSTERS_TABLE,
        lower_bound: lowerBound,
        limit
    }).then(async res => {
      if(res.more) {
        const nextLowerBound = res.rows[res.rows.length-1].id
        const nextRows = await apiList(nextLowerBound)
        return res.rows.concat(nextRows)
      } else {
        return res.rows
      }
    })
  }

  return await apiList(id, id ? 1 : 5000)
}

export const loadMonstersByOwner = async (
  account: string,
  config: GlobalConfig
) => {
  const pets = await loadPets()
  const ownerPets = pets.filter((pet: any) => pet.owner === account)
  return ownerPets.map((pet: any) => parseMonstersFromChain(pet, config))
}

export const loadMonsterById = async (
  id: number,
  config: GlobalConfig
) => {
  const pets = await loadPets(id)
  const monsters = pets.map((pet: any) => parseMonstersFromChain(pet, config))
  return monsters.length ? monsters[0] : null
}

export const loadWalletFunds = async (account: string) => {

  const res = await e2DefaultRpc.get_table_rows({
      json: true,
      scope: account,
      code: MONSTERS_ACCOUNT,
      table: BALANCES_TABLE,
      limit: 1000
  })

  return (res && res.rows && res.rows.length) ?
    Number(res.rows[0].balance.split(" ")[0]) :
    0
}

export const loadElements = async () => {
  const res = await e2DefaultRpc.get_table_rows({
      json: true,
      scope: MONSTERS_ACCOUNT,
      code: MONSTERS_ACCOUNT,
      table: ELEMENTS_TABLE,
      limit: 5000
  })

  const data = (res.rows || []).map((r: any) => {
    switch(r.id) {
      case 0:
        r.name = "Neutral"
        break
      case 1:
        r.name = "Wood"
        break
      case 2:
        r.name = "Earth"
        break
      case 3:
        r.name = "Water"
        break
      case 4:
        r.name = "Fire"
        break
      case 5:
        r.name = "Metal"
        break
      case 6:
        r.name = "Animal"
        break
      case 7:
        r.name = "Poison"
        break
      case 8:
        r.name = "Undead"
        break
      case 9:
        r.name = "Light"
        break
    }

    return r
  })

  return data
}

export const loadPetTypes = async () => {
  const data = await e2DefaultRpc.get_table_rows({
    json: true,
    scope: MONSTERS_ACCOUNT,
    code: MONSTERS_ACCOUNT,
    table: PET_TYPES_TABLE,
    limit: 5000
  })

  return data.rows || []
}


const checkBattleResources = async (eosAccount: string) => {
  const accResources = await e2DefaultRpc.get_account(eosAccount)

  console.info("acc resources", accResources)

  const availableCpu = accResources.cpu_limit.available
  const availableNet = accResources.net_limit.available

  if (availableCpu < BATTLE_REQ_CPU) {
    throw new Error(`You don\'t have enough CPU to join in a Battle. You have ${availableCpu/1000}ms and a battle requires at least ${BATTLE_REQ_CPU}.`)
  } else if (availableNet < BATTLE_REQ_NET) {
    throw new Error(`You don\'t have enough Net to join in a Battle. You have ${availableNet/1000}kb and a battle requires at least ${BATTLE_REQ_NET}.`)
  }
}

export const createBattle = async (
  scatter: any,
  mode: number,
) => {

  const eosAccount = getEosAccount(scatter.identity)
  await checkBattleResources(eosAccount)

  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)
  const hashInfo = generateHashInfo()

  return contract.battlecreate(eosAccount, mode, hashInfo.secret, eosAuthorization.permission)
  .catch((err: any) => {
    destroyHashInfo()
    throw err
  })
}

export const joinBattle = async(
  scatter: any,
  host: string
) => {

  const eosAccount = getEosAccount(scatter.identity)
  await checkBattleResources(eosAccount)

  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)
  const hashInfo = generateHashInfo()

  return contract.battlejoin(host, eosAccount, hashInfo.secret, eosAuthorization.permission)
  .catch((err: any) => {
    destroyHashInfo()
    throw err
  })
}

export const leaveBattle = async(
  scatter: any,
  host: string
) => {
  const eosAccount = getEosAccount(scatter.identity)
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)

  return contract.battleleave(host, eosAccount, eosAuthorization.permission)
  .then((res: any) => {
    destroyHashInfo()
    return res
  })

}