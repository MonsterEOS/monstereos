import { getEosAuthorization, getContract, getEosAccount } from "./scatter"
import {
  Rpc as e2Rpc,
  // SignatureProvider as e2SignatureProvider,
  // Api as e2Api
} from "eosjs2"
import { parseBattlesFromChain } from "../modules/battles/battles"

const CHAIN_PROTOCOL = process.env.REACT_APP_CHAIN_PROTOCOL || "http"
const CHAIN_HOST = process.env.REACT_APP_CHAIN_HOST || "localhost"
const CHAIN_PORT = process.env.REACT_APP_CHAIN_PORT || "8830"
const CHAIN_URL = `${CHAIN_PROTOCOL}://${CHAIN_HOST}:${CHAIN_PORT}`
export const CHAIN_ID = "cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f"
export const MONSTERS_ACCOUNT = "monstereosio"
export const MONSTERS_TABLE = "pets"
export const BATTLES_TABLE = "battles"
export const ELEMENTS_TABLE = "elements"
export const PET_TYPES_TABLE = "pettypes"
export const CONFIG_TABLE = "petconfig2"
export const BALANCES_TABLE = "accounts"
export const TOKEN_SYMBOL = "EOS"
export const MEMO = "MonsterEOS Wallet Deposit"

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

export const loadPets = async () => {
  const apiList = (lowerBound = 0): any => {
    return e2DefaultRpc.get_table_rows({
        json: true,
        scope: MONSTERS_ACCOUNT,
        code: MONSTERS_ACCOUNT,
        table: MONSTERS_TABLE,
        lower_bound: lowerBound,
        limit: 5000
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

  return await apiList(0)
}

// const e2DefaultSignatureProvider = new e2SignatureProvider([e2DefaultPk])
// const e2DefaultApi = new e2Api({
//   rpc: e2DefaultRpc,
//   signatureProvider: e2DefaultSignatureProvider,
//   chainId: CHAIN_ID
// })

// export const e2TrxCreatePet = (petName: string) => {
//   return e2DefaultApi.transact({
//     actions: [{
//       account: MONSTERS_ACCOUNT,
//       name: "createpet",
//       authorization: [{
//         actor: e2DefaultAcc,
//         permission: "active",
//       }],
//       data: {
//         owner: e2DefaultAcc,
//         pet_name: petName
//       },
//     }]
//   }, {
//     blocksBehind: 3,
//     expireSeconds: 30,
//   })
// }