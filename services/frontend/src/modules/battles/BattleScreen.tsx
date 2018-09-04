import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification, GlobalConfig, NOTIFICATION_ERROR, NOTIFICATION_SUCCESS } from "../../store"

import PageContainer from "../shared/PageContainer"
import { Arena, getCurrentBattle, getBattleText, isPlayerReady, BATTLE_PHASE_STARTING, MonsterType, BATTLE_PHASE_GOING } from "./battles"
import {
  loadArenaByHost,
  leaveBattle,
  startBattle,
  loadElements as apiLoadElements,
  loadPetTypes
} from "../../utils/eos"
import { getEosAccount } from "../../utils/scatter"
import BattleConfirmation from "./BattleConfirmation"
import BattleHeader from "./BattleHeader"
import BattleArena from "./BattleArena"

interface Props {
  globalConfig: GlobalConfig,
  dispatchPushNotification: any,
  scatter: any,
  match: any,
  history: any,
  identity: string,
}

interface ReactState {
  arena?: Arena
  elements: Element[]
  monsterTypes: MonsterType[],
  selectedAttackPetId: number,
  selectedAttackElementId: number,
  selectedAttackEnemyId: number
}

class BattleScreen extends React.Component<Props, ReactState> {

  public state = {
    arena: undefined,
    elements: [],
    monsterTypes: [],
    selectedAttackPetId: 0,
    selectedAttackElementId: -1,
    selectedAttackEnemyId: 0,
  }

  public componentDidMount() {
    this.refresh()
    this.loadElements()
    this.loadMonsterTypes()
  }

  public render() {

    const { identity } = this.props

    const {
      arena: maybeArena,
      elements,
      monsterTypes,
      selectedAttackElementId,
      selectedAttackEnemyId,
      selectedAttackPetId,
    } = this.state

    if (!maybeArena) {
      return (
        <span>
          <i className="fa fa-spin fa-spinner" /> Loading Battle....
        </span>
      )
    }

    const arena = maybeArena as Arena
    const currentBattle = getCurrentBattle([arena], identity)

    const isMyBattle = !!currentBattle

    const allowLeaveBattle = isMyBattle ?
      () => this.doLeaveBattle(arena.host) :
      null

    const isConfirmed = isPlayerReady(arena, identity)
    const allowConfirmation = isMyBattle && !isConfirmed &&
      arena.phase === BATTLE_PHASE_STARTING ?
      () => this.doStartBattle(arena.host) :
      null

    return (
      <PageContainer>
        <BattleHeader
          battleText={getBattleText(arena)}
          host={arena.host}
          isMyBattle={isMyBattle}
          allowConfirmation={allowConfirmation}
          allowLeaveBattle={allowLeaveBattle} />
        {arena.phase === BATTLE_PHASE_STARTING &&
        <BattleConfirmation
          commits={arena.commits} />
        }
        {arena.phase === BATTLE_PHASE_GOING &&
        <BattleArena
          arena={arena}
          attackSelection={this.attackSelection}
          enemySelection={this.enemySelection}
          selectedEnemyId={selectedAttackEnemyId}
          selectedPetId={selectedAttackPetId}
          selectedElementId={selectedAttackElementId}
          elements={elements!}
          monsterTypes={monsterTypes!} />
        }
      </PageContainer>
    )
  }

  private attackSelection = (monsterId: number, elementId: number) => {
    this.setState({
      selectedAttackPetId: monsterId,
      selectedAttackElementId: elementId,
    })
  }

  private enemySelection = (monsterId: number) => {
    this.setState({
      selectedAttackEnemyId: monsterId,
    })
  }

  private refresh = async () => {
    const { dispatchPushNotification } = this.props
    const { match: {params: { host } } } = this.props

    try {
      const arena = await loadArenaByHost(host)
      this.setState({arena})
      setTimeout(this.refresh, 1000) // TODO: implement websockets
    } catch (error) {
      console.error("Fail to load Arena", error)
      dispatchPushNotification("Fail to load Arena")
    }
  }

  private doLeaveBattle = async (host: string) => {
    const { scatter, dispatchPushNotification, history } = this.props
    leaveBattle(scatter, host)
      .then(() => {
        setTimeout(() => history.push("/arenas"), 500)
        dispatchPushNotification("Leaving Battle Successfully...", NOTIFICATION_SUCCESS)
      })
      .catch((error: any) => {
        console.error("Fail to leave battle", error)
        dispatchPushNotification("Fail to Leave Battle", NOTIFICATION_ERROR)
      })
  }

  private doStartBattle = async (host: string) => {
    const { scatter, dispatchPushNotification } = this.props
    startBattle(scatter, host)
      .then(() => {
        setTimeout(this.refresh, 500)
        dispatchPushNotification("Ready to Battle!", NOTIFICATION_SUCCESS)
      })
      .catch((error: any) => {
        console.error("Fail to confirm battle", error)
        setTimeout(this.refresh, 500)
        dispatchPushNotification("Fail to confirm Battle", NOTIFICATION_ERROR)
      })
  }

  private loadElements = async () => {
    const elements = await apiLoadElements()
    this.setState({elements})
  }

  private loadMonsterTypes = async () => {
    const monsterTypes = await loadPetTypes()
    this.setState({monsterTypes})
  }
}

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
    scatter: state.scatter,
    identity: getEosAccount(state.identity)
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(BattleScreen)