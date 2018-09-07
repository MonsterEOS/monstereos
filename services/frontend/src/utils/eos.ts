import { getEosAuthorization, getContract, getEosAccount } from "./scatter"
import {
  Rpc as e2Rpc,
  SignatureProvider as e2SignatureProvider,
  Api as e2Api
} from "eosjs2"
import { parseBattlesFromChain, parseConfigFromChain, Arena } from "../modules/battles/battles"
import { initialGlobalConfig, loadConfig, GlobalConfig } from "../store"
import { generateHashInfo, destroyHashInfo, getHashInfo } from "./hashInfo"
import { parseMonstersFromChain } from "../modules/monsters/monsters"
import { parseOfferFromChain } from "../modules/market/market"

// chain info constants
const CHAIN_PROTOCOL = process.env.REACT_APP_CHAIN_PROTOCOL || "http"
const CHAIN_HOST = process.env.REACT_APP_CHAIN_HOST || "localhost"
const CHAIN_PORT = process.env.REACT_APP_CHAIN_PORT || "8830"
const CHAIN_URL = `${CHAIN_PROTOCOL}://${CHAIN_HOST}:${CHAIN_PORT}`
export const CHAIN_ID = "cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f"

// contract constants
export const EOSIO_TOKEN_ACCOUNT = "eosio.token"
export const MONSTERS_ACCOUNT = "monstereosio"
export const MONSTERS_TABLE = "pets"
export const BATTLES_TABLE = "battles"
export const ELEMENTS_TABLE = "elements"
export const PET_TYPES_TABLE = "pettypes"
export const CONFIG_TABLE = "petconfig2"
export const BALANCES_TABLE = "accounts"
export const TOKEN_SYMBOL = "EOS"
export const MEMO = "MonsterEOS Wallet Deposit"

export const MONSTER_MARKET_ACCOUNT = "monstereosmt"
export const OFFER_TABLE = "offers"

// battle resources
export const BATTLE_REQ_CPU = 30 * 1000
export const BATTLE_REQ_NET = 2 * 1000

export const network = {
  protocol: CHAIN_PROTOCOL,
  blockchain: "eos",
  host: CHAIN_HOST,
  port: CHAIN_PORT,
  // chainId: CHAIN_ID
}

export const trxTokenTransfer = async (
  scatter: any,
  to: string,
  asset: string,
  memo: string
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, EOSIO_TOKEN_ACCOUNT)
  return contract.transfer(eosAuthorization.account.name, to, asset, memo, eosAuthorization.permission)
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

export const trxOfferPetMarket = async (
  scatter: any,
  petId: number,
  newOwner: string,
  amount: number
) => {

  console.info(amount)

  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTER_MARKET_ACCOUNT)
  return contract.offerpet(petId, newOwner, `${amount} EOS`, 0, eosAuthorization.permission)
}

export const trxRemoveOfferMarket = async (
  scatter: any,
  petId: number
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTER_MARKET_ACCOUNT)
  return contract.removeoffer(eosAuthorization.account.name, petId, eosAuthorization.permission)
}

export const trxClaimPetMarket = async (
    scatter: any,
    petId: number,
    oldOwner: string
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTER_MARKET_ACCOUNT)
  return contract.claimpet(oldOwner, petId, eosAuthorization.account.name, eosAuthorization.permission)
}

export const trxPlaceBidMarket = async (
  scatter: any,
  petId: number,
  amount: number
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)
    const contract = await getContract(scatter, network, MONSTER_MARKET_ACCOUNT)
    return contract.bidpet(petId, eosAuthorization.account.name, 0, amount, eosAuthorization.permission)
}  

// eos api
const e2DefaultRpc = new e2Rpc.JsonRpc(CHAIN_URL, { fetch })
const signatureProvider = new e2SignatureProvider([])
const e2DefaultApi = new e2Api({ rpc: e2DefaultRpc, signatureProvider, chainId: CHAIN_ID})

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

export const loadMonstersContract = () => {
  return e2DefaultApi.getContract(MONSTERS_ACCOUNT)
}

export const loadArenaByHost = (host: string): Promise<Arena> => {
  return e2DefaultRpc.get_table_rows({
    json: true,
    code: MONSTERS_ACCOUNT,
    scope: MONSTERS_ACCOUNT,
    table: BATTLES_TABLE,
    lower_bound: host,
    limit: 1
  }).then((res: any) => {
    const battles = res.rows.map(parseBattlesFromChain)
    return battles.length ? battles[0] : null
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
  pets: number[]
) => {

  const eosAccount = getEosAccount(scatter.identity)
  await checkBattleResources(eosAccount)

  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)
  const hashInfo = await generateHashInfo(pets)

  console.info(hashInfo)

  return contract.battlecreate(eosAccount, mode, hashInfo.secret, eosAuthorization.permission)
  .catch((err: any) => {
    destroyHashInfo()
    throw err
  })
}

export const joinBattle = async(
  scatter: any,
  host: string,
  pets: number[]
) => {

  const eosAccount = getEosAccount(scatter.identity)
  await checkBattleResources(eosAccount)

  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)
  const hashInfo = await generateHashInfo(pets)

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

export const startBattle = async(
  scatter: any,
  host: string
) => {
  const eosAccount = getEosAccount(scatter.identity)
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)

  const hashInfo = await getHashInfo()

  console.info("hashInfo data >>>>", hashInfo)

  return contract.battlestart(host, eosAccount, hashInfo.data, eosAuthorization.permission)
  .then((res: any) => {
    destroyHashInfo()
    return res
  })
}

export const attackBattle = async(
  scatter: any,
  host: string,
  petId: number,
  petEnemyId: number,
  elementId: number
) => {
  const eosAuthorization = getEosAuthorization(scatter.identity)
  const contract = await getContract(scatter, network, MONSTERS_ACCOUNT)

  return contract.battleattack(host, host, petId, petEnemyId, elementId, eosAuthorization.permission)
}

export const getWinner = async (host: string) => {
  try {
    const data = await e2DefaultRpc.history_get_actions(MONSTERS_ACCOUNT, undefined, -300)

    if (data && data.actions) {
      const actionData = data.actions
        .reverse()
        .filter((a: any) => {
          return a.action_trace && a.action_trace.act &&
            a.action_trace.act.name === "battlefinish" &&
            a.action_trace.act.data.host === host
        }).map((a: any) => a.action_trace.act.data)

      if (actionData.length) {
        console.info("and the winner is >>>", actionData[0].winner)
        return actionData[0].winner
      } else {
        throw new Error("Winner not recognized in history api")
      }
    }
  } catch (error) {
    console.error("Fail to get the winner", error)
    return "?"
  }
}

export const loadOffers = async(config: GlobalConfig, id?:number) => {
  const apiList = (lowerBound = 0, limit = 5000): any => {
    return e2DefaultRpc.get_table_rows({
        json: true,
        scope: MONSTER_MARKET_ACCOUNT,
        code: MONSTER_MARKET_ACCOUNT,
        table: OFFER_TABLE,
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

  const chainOffers = await apiList(id, id ? 1 : 5000)
  const chainMonsters = await loadPets()
  const monsters = chainMonsters.map((pet: any) => parseMonstersFromChain(pet, config))
  return chainOffers.map((o:any) => parseOfferFromChain(o, monsters))
}