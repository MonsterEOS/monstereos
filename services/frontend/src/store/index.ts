import { action as tsAction, ActionType } from "typesafe-actions"
import { combineReducers, createStore, applyMiddleware, compose } from "redux"
import thunk from "redux-thunk"
import {v4 as uuid} from "uuid"

import { network as eosNetwork, loadMonstersByOwner, loadWalletFunds } from "../utils/eos"
import { MonsterProps } from "../modules/monsters/monsters"
import { getEosAccount } from "../utils/scatter"
import { browserNotify } from "../utils/browserNotifications"

// state
export const HUNGER_TO_ZERO = 32 * 3600
export const ENERGY_TO_ZERO = 24 * 3600

export interface State {
  readonly scatter: any
  readonly identity: any
  readonly globalConfig: GlobalConfig
  readonly notifications: Notification[]
  readonly myMonsters: MonsterProps[]
  readonly myWalletBalance: string
}

export interface GlobalConfig {
  attack_max_factor: number
  attack_min_factor: number
  battle_busy_arenas: number
  battle_idle_tolerance: number
  battle_max_arenas: number
  creation_tolerance: number
  hunger_hp_modifier: number
  hunger_to_zero: number
  energy_to_zero: number
  last_element_id: number
  last_id: number
  last_pet_type_id: number
  max_health: number
  max_hunger_points: number
  min_awake_interval: number
  min_hunger_interval: number
  min_sleep_period: number
}

export const initialGlobalConfig = {
  attack_max_factor: 28,
  attack_min_factor: 20,
  battle_busy_arenas: 0,
  battle_idle_tolerance: 60,
  battle_max_arenas: 10,
  creation_tolerance: 3600,
  hunger_hp_modifier: 1,
  hunger_to_zero: HUNGER_TO_ZERO,
  energy_to_zero: ENERGY_TO_ZERO,
  last_element_id: 10,
  last_id: 13,
  last_pet_type_id: 109,
  max_health: 100,
  max_hunger_points: 100,
  min_awake_interval: 28800,
  min_hunger_interval: 10800,
  min_sleep_period: 14400
}

export interface Notification {
  id: string,
  text: string,
  type: number,
  time: number
}

export const NOTIFICATION_SUCCESS = 1
export const NOTIFICATION_WARNING = 2
export const NOTIFICATION_ERROR = 3

// actions constants
const LOAD_SCATTER = "LOAD_SCATTER"
const LOAD_EOS_IDENTITY = "LOAD_EOS_IDENTITY"
const DELETE_NOTIFICATION = "DELETE_NOTIFICATION"
const PUSH_NOTIFICATION = "PUSH_NOTIFICATION"
const LOAD_GLOBAL_CONFIG = "LOAD_GLOBAL_CONFIG"
const LOAD_MY_MONSTERS = "LOAD_MY_MONSTERS"
const LOAD_MY_WALLET = "LOAD_MY_WALLET"
const DO_LOGOUT = "DO_LOGOUT"

// auth actions
const actionLoadScatter = (scatter: object) => tsAction(LOAD_SCATTER, scatter)
const actionLoadEosIdentity = (identity: object) => tsAction(LOAD_EOS_IDENTITY, identity)
const actionLogout = () => tsAction(DO_LOGOUT)

// notifications
const actionPushNotificaction = (notification: Notification) => tsAction(PUSH_NOTIFICATION, notification)
const actionDeleteNotificaction = (id: string) => tsAction(DELETE_NOTIFICATION, id)

// read chain actions
const actionLoadConfig = (config: GlobalConfig) => tsAction(LOAD_GLOBAL_CONFIG, config)
const actionLoadMyMonsters = (monsters: MonsterProps[]) => tsAction(LOAD_MY_MONSTERS, monsters)
const actionLoadMyWallet = (myWalletBalance: string) => tsAction(LOAD_MY_WALLET, myWalletBalance)

// actions definitions
const actions = {
  actionLoadScatter,
  actionLoadEosIdentity,
  actionLogout,
  actionPushNotificaction,
  actionDeleteNotificaction,
  actionLoadConfig,
  actionLoadMyMonsters,
  actionLoadMyWallet
}
type Actions = ActionType<typeof actions>

// actions implementations
export const deleteNotification = (id: string) => {
  return actionDeleteNotificaction(id)
}

export const pushNotification = (text: string, type: number, browserNotification = false) => {

  if (browserNotification) {
    browserNotify(text)
  }

  return actionPushNotificaction({
    id: uuid(),
    time: Date.now(),
    text,
    type
  })
}

export const loadConfig = (config: GlobalConfig) => {
  return actionLoadConfig(config)
}

export const doLoadScatter = (scatter: any) => {
  return actionLoadScatter(scatter)
}

export const doLoadIdentity = (identity: any) => async (dispatch: any) => {
  dispatch(actionLoadEosIdentity(identity))
  dispatch(doLoadMyMonsters())
  dispatch(doLoadMyWallet())
}

export const doLoadMyMonsters = () => async (
  dispatch: any,
  getState: any,
) => {
  // autoload monsters
  const { globalConfig, identity } = getState()
  if (identity) {
    const account = getEosAccount(identity)
    const accountMonsters = await loadMonstersByOwner(account, globalConfig)
    dispatch(actionLoadMyMonsters(accountMonsters))
  }
}

export const doLoadMyWallet = () => async (
  dispatch: any,
  getState: any,
) => {
  // autoload monsters
  const { identity } = getState()
  if (identity) {
    const account = getEosAccount(identity)
    const accountWallet = await loadWalletFunds(account) || 0
    dispatch(actionLoadMyWallet(`${accountWallet} EOS`))
  }
}

export const requestScatterIdentity = () => async (dispatch: any, getState: any) => {

  console.info("requesting identity")
  const { scatter } = getState()

  await scatter.suggestNetwork(eosNetwork)

  const requiredFields = {
      accounts: [eosNetwork]
  }

  console.info("getting identity")
  return getState().scatter.getIdentity(requiredFields)
  .then((identity: any) => {
    console.info("identity is ", identity)
    dispatch(doLoadIdentity(identity))
  }).catch((error: any) => {
    if (error && error.message) {
      dispatch(pushNotification(error.message, NOTIFICATION_ERROR))
    } else {
      console.error("Fail to get Scatter Identity", error)
      dispatch(pushNotification("Fail to get Scatter Identity", NOTIFICATION_ERROR))
    }
  })
}

export const doLogout = () => (dispatch: any, getState: any) => {
  getState().scatter.forgetIdentity()
  return dispatch(actionLogout())
}

// reducer
const reducers = combineReducers<State, Actions>({
  scatter: (state = null, action) => {
    switch (action.type) {
      case LOAD_SCATTER:
        return action.payload
      default:
        return state
    }
  },
  identity: (state = null, action) => {
    switch (action.type) {
      case LOAD_EOS_IDENTITY:
        return action.payload
      case DO_LOGOUT:
        return ""
      default:
        return state
    }
  },
  globalConfig: (state = initialGlobalConfig, action) => {
    switch (action.type) {
      case LOAD_GLOBAL_CONFIG:
        return action.payload
      default:
        return state
    }
  },
  myMonsters: (state = [], action) => {
    switch (action.type) {
      case LOAD_MY_MONSTERS:
        return action.payload
      case DO_LOGOUT:
        return []
      default:
        return state
    }
  },
  notifications: (state = [], action) => {
    switch (action.type) {
      case PUSH_NOTIFICATION:
        const notification = action.payload as Notification
        return state.concat(notification)
      case DELETE_NOTIFICATION:
        return state.filter((item) => item.id !== action.payload)
      default:
        return state
    }
  },
  myWalletBalance: (state = "0 EOS", action) => {
    switch (action.type) {
      case LOAD_MY_WALLET:
        return action.payload
      default:
        return state
    }
  }
})


// store
const customWindow = (window as any)

// TODO: remove extension for production
const composeEnhancers = customWindow.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose

const store = createStore(reducers, composeEnhancers(applyMiddleware(thunk)))
export default store