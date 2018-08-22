// const STORAGE_KEY = "MONSTEREOS"
const CHAIN_PROTOCOL = "http" // 'https'
const CHAIN_HOST = "localhost" // 'mainnet.eoscalgary.io' //'mainnet.eoscalgary.io' //'nodes.get-scatter.com' //'br.eosrio.io'
const CHAIN_PORT = "8830" // '443' //8080' //80
// const CHAIN_ADDRESS = CHAIN_PROTOCOL + "://" + CHAIN_HOST + ":" + CHAIN_PORT
export const CHAIN_ID = null // 'aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906'
export const MONSTERS_ACCOUNT = "monstereosio"
export const MONSTERS_TABLE = "pets"
export const BATTLES_TABLE = "battles"
export const ELEMENTS_TABLE = "elements"
export const PET_TYPES_TABLE = "pettypes"
export const CONFIG_TABLE = "petconfig2"
export const BALANCES_TABLE = "accounts"
export const TOKEN_SYMBOL = "EOS"
export const MEMO = "MonsterEOS Wallet Deposit"
// // const ACTIONS_API = 'https://api.eostracker.io/accounts/monstereosio/actions/to?page=1&size=300'
// // const ACTIONS_API = 'https://api.eosrio.io/v1/history/get_actions'
export const ACTIONS_API = "http://localhost:8830/v1/history/get_actions"

export const network = {
  protocol: CHAIN_PROTOCOL,
  blockchain: "eos",
  host: CHAIN_HOST,
  port: CHAIN_PORT,
  chainId: CHAIN_ID
}

// import Eos from "eosjs"
// import ecc from "eosjs-ecc"

// const STORAGE_KEY = "MONSTEREOS"
// const CHAIN_PROTOCOL = "http" // 'https'
// const CHAIN_HOST = "localhost" // 'mainnet.eoscalgary.io' //'mainnet.eoscalgary.io' //'nodes.get-scatter.com' //'br.eosrio.io'
// const CHAIN_PORT = "8830" // '443' //8080' //80
// const CHAIN_ADDRESS = CHAIN_PROTOCOL + "://" + CHAIN_HOST + ":" + CHAIN_PORT
// const CHAIN_ID = null // 'aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906'
// const MONSTERS_ACCOUNT = "monstereosio"
// const MONSTERS_TABLE = "pets"
// const BATTLES_TABLE = "battles"
// const ELEMENTS_TABLE = "elements"
// const PET_TYPES_TABLE = "pettypes"
// const CONFIG_TABLE = "petconfig2"
// const BALANCES_TABLE = "accounts"
// const TOKEN_SYMBOL = "EOS"
// const MEMO = "MonsterEOS Wallet Deposit"
// // const ACTIONS_API = 'https://api.eostracker.io/accounts/monstereosio/actions/to?page=1&size=300'
// // const ACTIONS_API = 'https://api.eosrio.io/v1/history/get_actions'
// const ACTIONS_API = "http://localhost:8830/v1/history/get_actions"

// // resources
// const BATTLE_REQ_CPU = 30 * 1000
// const BATTLE_REQ_NET = 2 * 1000

// const initialHashInfo = { mouseMove: [], lastPair: null }
// const initialStorageBody = { hashInfo: null }

// export const initialStorage = localStorage.getItem(STORAGE_KEY)

// console.info("initialStorage >>>", flags)

// /* Eos and Scatter Setup */
// const network = {
//   protocol: CHAIN_PROTOCOL,
//   blockchain: "eos",
//   host: CHAIN_HOST,
//   port: CHAIN_PORT,
//   chainId: CHAIN_ID
// }
// const localNet = Eos({httpEndpoint: CHAIN_ADDRESS, chainId: CHAIN_ID})

// let scatter: any = null
// let globalConfigs: any = null
// let hashInfo: any = initialHashInfo

// const scatterDetection = setTimeout(() => {
//   if (scatter == null) {
//     // TODO: submit scatter detection false
//     // app.ports.setScatterInstalled.send(false)
//   }
// }, 5000)

// // timeout helper
// const timeout = (ms: number) => {
//   return new Promise(resolve => setTimeout(resolve, ms))
// }

// const handleErrorMessages = (e: any, genericMessage: any, cb: any) => {
//   console.error(genericMessage, e)

//   let errorMsg = genericMessage
//   if (e && e.message) {
//     errorMsg = e.message
//   } else {
//     const errorObj = JSON.parse(e)
//     if (errorObj && errorObj.error && errorObj.error.details &&
//       errorObj.error.details.length) {
//       errorMsg = errorObj.error.details[0].message
//     }
//   }

//   cb(errorMsg)
// }

// const getAuthorization = () => {
//   if (!scatter || !scatter.identity || !scatter.identity.accounts) {
//     return null
//   }

//   const account = scatter.identity.accounts.find((account: any) => account.blockchain === "eos")

//   return {
//     permission: {
//       authorization: [ `${account.name}@${account.authority}` ]
//     },
//     account
//   }
// }

// const getEos = () => {
//   return scatter.eos(network, Eos, { chainId: CHAIN_ID })
// }

// const getContract = async () => {
//   return getEos().contract(MONSTERS_ACCOUNT)
// }

// document.addEventListener("scatterLoaded", scatterExtension => {
//   clearTimeout(scatterDetection)
//   scatter = window.scatter
//   window.scatter = null

//   scatter.suggestNetwork(network)

//   // TODO: react set scatter installed
//   // app.ports.setScatterInstalled.send(true)

//   if (scatter.identity) {

//     const user = {
//         eosAccount: scatter.identity.accounts[0].name,
//         publicKey: scatter.identity.publicKey
//     }

//     // TODO: react set identity
//     // app.ports.setScatterIdentity.send(user)
//   }
// })

