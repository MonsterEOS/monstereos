import { action as tsAction, ActionType } from "typesafe-actions"
import { combineReducers, createStore, applyMiddleware, compose } from "redux"
import thunk from "redux-thunk"

import { network as eosNetwork } from "../utils/eos"

// state

export interface State {
  readonly scatter: any
  readonly identity: any
  readonly globalConfig: GlobalConfig
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
  last_element_id: number
  last_id: number
  last_pet_type_id: number
  max_health: number
  max_hunger_points: number
  min_awake_interval: number
  min_hunger_interval: number
  min_sleep_period: number
}

const initialGlobalConfig = {
  attack_max_factor: 28,
  attack_min_factor: 20,
  battle_busy_arenas: 0,
  battle_idle_tolerance: 60,
  battle_max_arenas: 10,
  creation_tolerance: 3600,
  hunger_hp_modifier: 1,
  hunger_to_zero: 36000,
  last_element_id: 10,
  last_id: 13,
  last_pet_type_id: 109,
  max_health: 100,
  max_hunger_points: 100,
  min_awake_interval: 28800,
  min_hunger_interval: 10800,
  min_sleep_period: 14400
}

// const initialState: State = {
//   scatter: null,
//   eosAccount: ""
// }

// actions definitions
const LOAD_SCATTER = "LOAD_SCATTER"
const LOAD_EOS_IDENTITY = "LOAD_EOS_IDENTITY"
const DO_LOGOUT = "DO_LOGOUT"

const actionLoadScatter = (scatter: object) => tsAction(LOAD_SCATTER, scatter)
const actionLoadEosIdentity = (identity: object) => tsAction(LOAD_EOS_IDENTITY, identity)
const actionLogout = () => tsAction(DO_LOGOUT)

const actions = {
  actionLoadScatter,
  actionLoadEosIdentity,
  actionLogout,
}
type Actions = ActionType<typeof actions>

// actions implementations
export const doLoadScatter = (scatter: any) => {
  return actionLoadScatter(scatter)
}

export const doLoadIdentity = (identity: any) => {
  return actionLoadEosIdentity(identity)
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
    dispatch(actionLoadEosIdentity(identity))
  }).catch((error: any) => {
    if (error && error.message) {
      alert(error.message)
    } else {
      console.error("Fail to get Scatter Identity", error)
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
    console.info("calling scatter reducer")
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
  globalConfig: (state = initialGlobalConfig) => {
    // TODO: implement dynamic global config
    return state
  }
})


// store
const customWindow = (window as any)

// TODO: remove extension for production
const composeEnhancers = customWindow.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose

const store = createStore(reducers, composeEnhancers(applyMiddleware(thunk)))
export default store