import './main.css';
import { Main } from './Main.elm';
import registerServiceWorker from './registerServiceWorker';
import Eos from 'eosjs'
import ecc from 'eosjs-ecc'

const STORAGE_KEY = 'MONSTEREOS'
const CHAIN_PROTOCOL = 'http' //'https'
const CHAIN_HOST = 'localhost' // '178.63.66.3' // 'mainnet.eoscalgary.io' //'mainnet.eoscalgary.io' //'nodes.get-scatter.com' //'br.eosrio.io'
const CHAIN_PORT = '8830' //'443' //8080' //80
const CHAIN_ADDRESS = CHAIN_PROTOCOL + '://' + CHAIN_HOST + ':' + CHAIN_PORT
const CHAIN_ID = null //'aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906'
const MONSTERS_ACCOUNT = 'monstereosio'
const MONSTERS_TABLE = 'pets'
const BATTLES_TABLE = 'battles'
const ELEMENTS_TABLE = 'elements'
const PET_TYPES_TABLE = 'pettypes'
const CONFIG_TABLE = 'petconfig2'
const BALANCES_TABLE = 'accounts'
const TOKEN_SYMBOL = 'EOS'
const MEMO = 'MonsterEOS Wallet Deposit'
const ACTIONS_API = 'http://localhost:8830/v1/history/get_actions'

// resources
const BATTLE_REQ_CPU = 30 * 1000
const BATTLE_REQ_NET = 2 * 1000

const initialHashInfo = { mouseMove: [], lastPair: null }
const initialStorageBody = { user: initialUser, hashInfo: null }

const storageBody = localStorage.getItem(STORAGE_KEY)
const flags = !storageBody ? initialStorageBody : JSON.parse(storageBody)

let hashInfo = initialHashInfo

const handleErrorMessages = (e, genericMessage, cb) => {
  console.error(genericMessage, e)

  let errorMsg = genericMessage
  if (e && e.message) {
    errorMsg = e.message
  } else {
    const errorObj = JSON.parse(e)
    if (errorObj && errorObj.error && errorObj.error.details &&
      errorObj.error.details.length) {
      errorMsg = errorObj.error.details[0].message
    }
  }

  cb(errorMsg)
}

app.ports.requestDeposit.subscribe(async (depositAmount) => {

  const auth = getAuthorization()

  console.log("depositing " + depositAmount)

  const data = {
    from: auth.account.name,
    to: MONSTERS_ACCOUNT,
    quantity: depositAmount.toFixed(4) + ' ' + TOKEN_SYMBOL,
    memo: MEMO
  }

  const options = {
    broadcast: true,
    authorization: auth.permission.authorization
  }

  const contract = await getEos().contract('eosio.token')
    .catch(e => {
      console.error('fail to initialize eosio.token ', e)
      app.ports.depositFailed.send('Fail to Initialize eosio.token')
    })

  if (!contract) return

  const transfer = await contract.transfer(data, auth.permission)
    .catch(e => {
        console.error('error on deposit transfer ', e)
        const errorMsg = (e && e.message) ||
        'An error happened while making the deposit, please try again'
        app.ports.depositFailed.send(errorMsg)
      })

  if (transfer) app.ports.depositSucceed.send(transfer.transaction_id)
})

app.ports.getBattleWinner.subscribe(async (host) => {

  const genericError = 'Battle is finished but failed to get the winner'

  const _interval = await timeout(500)

  // const data = await fetch(ACTIONS_API)
  const body = `{ "account_name": "monstereosio", "offset": -300 }`
  const data = await fetch(ACTIONS_API, {method: 'POST', body})
  .then(r => r.json())
  .catch(e => {
    console.error(e)
    app.ports.getBattleWinnerFailed.send(genericError)
  })

  // // eostracker.io api <3
  // if (data) {
  //   const actionData = data.filter(a => {
  //     return a.name == 'battlefinish' && a.data && a.data.host == host
  //   }).map(a => a.data)

  //   if(actionData.length) {
  //     return app.ports.getBattleWinnerSucceed.send(actionData[0].winner)
  //   }
  // }

  // original eosrpc api endpoint
  if (data && data.actions) {
    const actionData = data.actions
      .reverse()
      .filter(a => {
        return a.action_trace && a.action_trace.act &&
          a.action_trace.act.name == 'battlefinish' &&
          a.action_trace.act.data.host == host
      }).map(a => a.action_trace.act.data)

    if (actionData.length) {
      console.log('and the winner is >>>', actionData[0].winner)
      return app.ports.getBattleWinnerSucceed.send(actionData[0].winner)
    }
  }

  app.ports.getBattleWinnerFailed.send(genericError)
})

app.ports.listPetTypes.subscribe(async () => {

  const data = await localNet.getTableRows({
              "json": true,
              "scope": MONSTERS_ACCOUNT,
              "code": MONSTERS_ACCOUNT,
              "table": PET_TYPES_TABLE,
              "limit": 5000
          }).then(res => res.rows)
          .catch(e => handleErrorMessages(e, 'Error while listing Monster Types', app.ports.listPetTypesFailed.send))

  if(data) app.ports.listPetTypesSucceed.send(data)
})

app.ports.battleStart.subscribe(async (host) => {
  const auth = getAuthorization()

  const contract = await getContract()

  const hashInfo = flags.hashInfo

  const action = await contract.battlestart(host, auth.account.name, hashInfo.hash, auth.permission)
  .catch(e => handleErrorMessages(e, 'An error happened while attempting to Start a Battle', app.ports.battleStartFailed.send))

  if(action) {
    destroyHashInfo()
    app.ports.battleStartSucceed.send(action.transaction_id)
  }
})

app.ports.battleSelPet.subscribe(async params => {
  const auth = getAuthorization()

  const contract = await getContract()

  const action = await contract.battleselpet(params.host, auth.account.name, params.petId, auth.permission)
  .catch(e => handleErrorMessages(e, 'An error happened while attempting to Select a Monster for a Battle', app.ports.battleSelPetFailed.send))

  if(action) app.ports.battleSelPetSucceed.send(action.transaction_id)
})

app.ports.battleAttack.subscribe(async params => {
  const auth = getAuthorization()

  const contract = await getContract()

  const action = await contract.battleattack(params.host, auth.account.name, params.petId, params.petEnemyId, params.element, auth.permission)
  .catch(e => handleErrorMessages(e, 'An error happened while attempting to Attack', app.ports.battleAttackFailed.send))

  if(action) app.ports.battleAttackSucceed.send(action.transaction_id)
})

