import './main.css';
import { Main } from './Main.elm';
import registerServiceWorker from './registerServiceWorker';
import Eos from 'eosjs'

const STORAGE_KEY = "MONSTEREOS"

const storageBody = localStorage.getItem(STORAGE_KEY)
const flags = !storageBody ?
  { user: { eosAccount: "", publicKey: "" } } : JSON.parse(storageBody)

const app = Main.embed(document.getElementById('root'), flags)

/* Eos and Scatter Setup */
const network = {
  blockchain: "eos",
  host: "localhost",
  port: 8888
}

const monstersAccount = 'pet'
const monstersTable = 'pets'

let scatter = null;

const scatterDetection = setTimeout(() => {
  if (scatter == null) {
    app.ports.setScatterInstalled.send(false)
  }
}, 5000)

const getAuthorization = async () => {
  const account = scatter.identity.accounts.find(account => account.blockchain === 'eos')

  return [{ authorization: [ `${account.name}@${account.authority}` ]}, account]
}

document.addEventListener('scatterLoaded', scatterExtension => {
  clearTimeout(scatterDetection)
  scatter = window.scatter
  window.scatter = null

  scatter.suggestNetwork(network)

  app.ports.setScatterInstalled.send(true)

  if (scatter.identity) {

    const user = {
        eosAccount: scatter.identity.accounts[0].name,
        publicKey: scatter.identity.publicKey
    }

    app.ports.setScatterIdentity.send(user)
  }
})

app.ports.refreshPage.subscribe(() => {
  location.reload()
})

app.ports.signOut.subscribe(() => {
  scatter.forgetIdentity()
  app.ports.setScatterInstalled.send(true)
})

app.ports.scatterRequestIdentity.subscribe(async () => {

    await scatter.suggestNetwork(network)

    let requiredFields = {
        accounts: [network]
    }
    scatter.getIdentity(requiredFields).then((identity) => {

      const user = {
          eosAccount: identity.accounts[0].name,
          publicKey: identity.publicKey
      }

      app.ports.setScatterIdentity.send(user)
    }).catch(error => {
      app.ports.scatterRejected.send("Identity or Network was rejected")
      console.error(error)
    })
})

app.ports.listMonsters.subscribe(async () => {
    const localNet = Eos.Localnet({httpEndpoint: "http://127.0.0.1:8888"})

    const monsters = await localNet.getTableRows({
                "json": true,
                "scope": monstersAccount,
                "code": monstersAccount,
                "table": monstersTable,
                "limit": 5000
            }).then(res => res.rows)

    app.ports.setMonsters.send(monsters)
})

app.ports.submitNewMonster.subscribe(async (petId) => {

  const authorization = await getAuthorization()

  const contract = await scatter.eos(network, Eos.Localnet, {})
    .contract(monstersAccount)

  const createpet = await contract.createpet(petId, authorization[1].name, authorization[0])
    .catch(e => {
        console.error('error on pet creation ', e)
        app.ports.monsterCreationFailed.send('An error happened while creating the pet')
      })

  if(feedpet) app.ports.monsterCreationSucceed.send(feedpet.transaction_id)
})

app.ports.requestFeed.subscribe(async (petId) => {
  const authorization = await getAuthorization()[0]

  const contract = await scatter.eos(network, Eos.Localnet, {})
    .contract(monstersAccount)

  const feedpet = await contract.feedpet(petId, authorization[0])
    .catch(e => {
        console.error('error on feedpet ', e)
        app.ports.feedFailed.send('An error happened while feeding the pet')
      })

  if(feedpet) app.ports.feedSucceed.send(feedpet.transaction_id)
})

registerServiceWorker();
