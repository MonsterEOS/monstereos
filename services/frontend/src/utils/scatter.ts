
import { doLoadScatter, doLoadIdentity } from "../store"

const customWindow = (window as any)

const loadScatter = (scatter: any, store: any) => {
  store.dispatch(doLoadScatter(scatter))

  if (scatter.identity) {
    store.dispatch(doLoadIdentity(scatter.identity))
  }

  customWindow.scatter = null
}

export default (store: any) => {
  if (customWindow.scatter) {
    console.info("Scatter detected initially")
    loadScatter(customWindow.scatter, store)
  } else {
    console.info("setting scatterLoaded event")
    document.addEventListener("scatterLoaded", scatterExtension => {
      console.info("scatterLoaded event detected!")
      loadScatter(customWindow.scatter, store)
    })
  }
}

export const getEosAccount = (identity: any) => {
  if (!identity || !identity.accounts || !identity.accounts.length) {
    return ""
  }

  const account = identity.accounts.find((acc: any) => acc.blockchain === "eos")

  return (account && account.name) || ""
}

export const SCATTER_EXTENSION_LINK = "https://chrome.google.com/webstore/detail/scatter/ammjpmhgckkpcamddpolhchgomcojkle"