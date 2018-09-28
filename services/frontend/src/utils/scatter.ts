import { doLoadScatter, doLoadIdentity } from "../store"
import ScatterJS from "scatter-js/dist/scatter.esm"
import eos from "eosjs"

const customWindow = (window as any)

const loadScatter = (scatter: any, store: any) => {
  store.dispatch(doLoadScatter(scatter))

  if (scatter.identity) {
    store.dispatch(doLoadIdentity(scatter.identity))
  }

  customWindow.scatter = null
}

export default (store: any) => {

  ScatterJS.scatter.connect("MonsterEOS")
    .then((connected: any) => {
      if (connected) {
        const scatter = ScatterJS.scatter
        loadScatter(scatter, store)
        customWindow.scatter = null
      }
    })
}

export const getEosAccount = (identity: any) => {
  if (!identity || !identity.accounts || !identity.accounts.length) {
    return ""
  }

  const account = identity.accounts.find((acc: any) => acc.blockchain === "eos")

  return (account && account.name) || ""
}

export const getEosAuthorization = (identity: any) => {
  if (!identity || !identity.accounts || !identity.accounts.length) {
    return {}
  }

  const account = identity.accounts.find((acc: any) => acc.blockchain === "eos")

  return {
    permission: {
      authorization: [ `${account.name}@${account.authority}` ]
    },
    account
  }
}

export const getContract = (scatter: any, network: any, contract: string) => {
  // return scatter.eos(network, eos, { chainId: CHAIN_ID }).contract(contract)
  return scatter.eos(network, eos, {}).contract(contract)
}

export const SCATTER_EXTENSION_LINK = "https://chrome.google.com/webstore/detail/scatter/ammjpmhgckkpcamddpolhchgomcojkle"