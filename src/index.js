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
  host: 'localhost', // 'dev.cryptolions.io', //"localhost",
  port: 8888
}
const localNet = Eos.Localnet({httpEndpoint: 'http://127.0.0.1:8888'})

const monstersAccount = 'monstereosio'
const monstersTable = 'pets'

let scatter = null;

const scatterDetection = setTimeout(() => {
  if (scatter == null) {
    app.ports.setScatterInstalled.send(false)
  }
}, 5000)

const getAuthorization = () => {
  const account = scatter.identity.accounts.find(account => account.blockchain === 'eos')

  return {
    permission: {
      authorization: [ `${account.name}@${account.authority}` ]
    },
    account
  }
}

const getContract = async () => {
  return scatter.eos(network, Eos.Localnet, {})
    .contract(monstersAccount);
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

    const monsters = await localNet.getTableRows({
                "json": true,
                "scope": monstersAccount,
                "code": monstersAccount,
                "table": monstersTable,
                "limit": 5000
            }).then(res => res.rows.map(row =>
              Object.assign({}, row, {
              created_at: row.created_at * 1000,
              death_at: row.death_at * 1000,
              last_bed_at: row.last_bed_at * 1000,
              last_fed_at: row.last_fed_at * 1000,
              last_play_at: row.last_play_at * 1000,
              last_shower_at: row.last_shower_at * 1000,
              last_awake_at: row.last_awake_at * 1000,
              is_sleeping: row.is_sleeping === 1
            }))).catch(e => {
              app.ports.setMonstersFailed.send('Error while listing Monsters')
            })

    app.ports.setMonsters.send(monsters)
})

app.ports.submitNewMonster.subscribe(async (monsterName) => {

  const auth = getAuthorization()

  const contract = await getContract()

  const createpet = await contract.createpet(auth.account.name, monsterName, auth.permission)
    .catch(e => {
        console.error('error on pet creation ', e)
        const errorMsg = (e && e.message) ||
        'An error happened while creating the monster'
        app.ports.monsterCreationFailed.send(errorMsg)
      })

  if (createpet) app.ports.monsterCreationSucceed.send(createpet.transaction_id)
})

app.ports.requestFeed.subscribe(async (petId) => {
  const auth = getAuthorization()

  const contract = await getContract()

  const feedpet = await contract.feedpet(petId, auth.permission)
    .catch(e => {
        console.error('error on feedpet ', e)
        const errorMsg = (e && e.message) ||
        'An error happened while feeding the monster'
        app.ports.feedFailed.send(errorMsg)
      })

  console.log(feedpet)

  if(feedpet) app.ports.feedSucceed.send(feedpet.transaction_id)
})

app.ports.requestAwake.subscribe(async (petId) => {

  const auth = getAuthorization()

  const contract = await getContract()

  const awakepet = await contract.awakepet(petId, auth.permission)
    .catch(e => {
        console.error('error on waking pet ', e)
        const errorMsg = (e && e.message) ||
        'An error happened while awaking the monster'
        app.ports.awakeFailed.send(errorMsg)
      })

  console.log(awakepet)

  if(awakepet) app.ports.awakeSucceed.send(awakepet.transaction_id)
})

app.ports.requestBed.subscribe(async (petId) => {
  const auth = getAuthorization()

  const contract = await getContract()

  const bedpet = await contract.bedpet(petId, auth.permission)
    .catch(e => {
        console.error('error on bed pet ', e)
        const errorMsg = (e && e.message) ||
        'An error happened while attempting to bed the monster'
        app.ports.bedFailed.send(errorMsg)
      })

  console.log(bedpet)

  if(bedpet) app.ports.bedSucceed.send(bedpet.transaction_id)
})

app.ports.requestPlay.subscribe(async (petId) => {
  app.ports.feedSucceed.send('lazy developer must build "Play" action')
})

app.ports.requestWash.subscribe(async (petId) => {
  app.ports.feedSucceed.send('lazy developer must build "Wash" action')
})

registerServiceWorker();
