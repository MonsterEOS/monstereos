import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification, GlobalConfig, NOTIFICATION_ERROR, NOTIFICATION_SUCCESS } from "../../store"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import { Arena, getCurrentBattle, getBattleText, isPlayerReady, BATTLE_PHASE_STARTING, MonsterType, BATTLE_PHASE_GOING, BATTLE_PHASE_FINISHED, BATTLE_PHASE_JOINING, battleCountdownText, Element, getBattleCountdown } from "./battles"
import {
  loadArenaByHost,
  leaveBattle,
  startBattle,
  loadElements as apiLoadElements,
  loadPetTypes,
  attackBattle,
  getWinner
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
  arena?: Arena,
  elements: Element[],
  monsterTypes: MonsterType[],
  selectedAttackPetId: number,
  selectedAttackElementId: number,
  selectedAttackEnemyId: number,
  winner?: string,
  turnCountdown: number,
  isOver: boolean
}

class BattleScreen extends React.Component<Props, ReactState> {

  private refreshHandler: any = 0

  constructor(props: Props) {
    super(props)
    this.state = {
      arena: undefined,
      elements: [],
      monsterTypes: [],
      selectedAttackPetId: 0,
      selectedAttackElementId: -1,
      selectedAttackEnemyId: 0,
      turnCountdown: -1,
      winner: undefined,
      isOver: false
    }
  }

  public componentDidMount() {
    this.refresh()
    this.loadElements()
    this.loadMonsterTypes()
  }

  public componentWillUnmount() {
    console.info("unmounting battle-screen")
    if (this.refreshHandler) {
      console.info("erasing blattle-screen refresh handler")
      clearTimeout(this.refreshHandler)
      this.refreshHandler = 0
    }
  }

  public render() {

    const { identity, globalConfig } = this.props

    const {
      arena,
      winner,
      elements,
      monsterTypes,
      selectedAttackElementId,
      selectedAttackEnemyId,
      selectedAttackPetId,
    } = this.state

    if (!arena) {
      return (
        <span>
          <i className="fa fa-spin fa-spinner" /> Loading Battle....
        </span>
      )
    }

    const currentBattle = getCurrentBattle([arena], identity)

    const isMyBattle = !!currentBattle

    const allowLeaveBattle = isMyBattle &&
      (arena.phase === BATTLE_PHASE_STARTING ||
      arena.phase === BATTLE_PHASE_JOINING) ?
      () => this.doLeaveBattle(arena.host) :
      null

    const countdownText = battleCountdownText(arena, globalConfig)

    const isConfirmed = isPlayerReady(arena, identity)
    const allowConfirmation = isMyBattle && !isConfirmed &&
      arena.phase === BATTLE_PHASE_STARTING ?
      () => this.doStartBattle(arena.host) :
      null

    const isOver = arena.phase === BATTLE_PHASE_FINISHED

    // const myTurn = arena.commits[0].player === identity

    const battleCountdown = getBattleCountdown(arena, globalConfig)

    return (
      <PageContainer isShort>
        <BattleHeader
          battleText={getBattleText(arena)}
          host={arena.host}
          isMyBattle={isMyBattle}
          isOver={isOver}
          countdownText={countdownText}
          allowConfirmation={allowConfirmation}
          allowLeaveBattle={allowLeaveBattle} />
        {arena.phase === BATTLE_PHASE_STARTING &&
        <BattleConfirmation
          commits={arena.commits} />
        }
        {(arena.phase === BATTLE_PHASE_GOING ||
        arena.phase === BATTLE_PHASE_FINISHED) &&
        <BattleArena
          arena={arena}
          attackSelection={this.attackSelection}
          enemySelection={this.enemySelection}
          submitAttack={() => this.submitAttack(arena.host)}
          selectedEnemyId={selectedAttackEnemyId}
          selectedPetId={selectedAttackPetId}
          selectedElementId={selectedAttackElementId}
          elements={elements}
          winner={winner}
          battleCountdown={battleCountdown}
          monsterTypes={monsterTypes!} />
        }
        {/* mobile controls */}
        <div className="is-hidden-tablet">
        {(!isMyBattle || isOver) &&
          <Link className="mobile-arena-back" to="/arenas">
            Back to Arenas
          </Link>}
        </div>

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
    const { match: {params: { host } } } = this.props
    const { isOver, arena } = this.state

    if (!host) {
      return
    }

    try {
      const newArena = await loadArenaByHost(host)

      if (newArena) {

        if (arena !== undefined) {
          const currentArena = arena as Arena
          this.handleArenaNotifications(currentArena, newArena)
        }

        this.setState({arena: newArena})

      } else if (arena !== null && arena !== undefined && arena.petsStats.length) {
        const confirmedArena = arena as Arena
        const winner = await getWinner(confirmedArena.host)

        const updatedStats =
          confirmedArena.petsStats.map((stat) => {
            return stat.player !== winner ?
              Object.assign({}, stat, {hp: 0})
              : stat
          })

        const updatedArena: Arena = Object.assign(
          {},
          arena,
          {phase: BATTLE_PHASE_FINISHED, petsStats: updatedStats}
        )

        this.setState({isOver: true, arena: updatedArena, winner})
      }

      // TODO: implement websockets
    } catch (error) {
      console.error("Fail to load Arena", error)
      // dispatchPushNotification("Fail to load Arena")
    }

    if (!isOver) {
      this.refreshHandler = setTimeout(this.refresh, 1000)
    }
  }

  private handleArenaNotifications = (currentArena: Arena, newArena: Arena) => {

    const { dispatchPushNotification } = this.props

    // check someone joined in arena
    newArena.commits.forEach((commit) => {
      const oldArenaCommit = currentArena.commits.find((oldCommit) => oldCommit.player === commit.player)

      if (!oldArenaCommit) {
        const notification = `${commit.player} has joined the battle. Be Ready!`
        console.info(notification)
        dispatchPushNotification(notification, NOTIFICATION_SUCCESS, true)
      } else if (oldArenaCommit.randoms.length !== commit.randoms.length) {
        const notification = `${commit.player} is ready! Let the Battle Start!`
        console.info(notification)
        dispatchPushNotification(notification, NOTIFICATION_SUCCESS, true)
      }
    })

  }

  private submitAttack = async (host: string) => {
    const { scatter, dispatchPushNotification } = this.props

    const {
      selectedAttackElementId,
      selectedAttackPetId,
      selectedAttackEnemyId
    } = this.state

    await attackBattle(scatter, host, selectedAttackPetId, selectedAttackEnemyId, selectedAttackElementId)
      .catch((err: any) => {
        dispatchPushNotification(`Fail to Submit Attack ${err.eosError}`, NOTIFICATION_ERROR)
      })
  }

  private doLeaveBattle = async (host: string) => {
    const { scatter, dispatchPushNotification, history } = this.props
    leaveBattle(scatter, host)
      .then(() => {
        setTimeout(() => history.push("/arenas"), 500)
        dispatchPushNotification("Leaving Battle Successfully...", NOTIFICATION_SUCCESS)
      })
      .catch((err: any) => {
        dispatchPushNotification(`Fail to Leave Battle ${err.eosError}`, NOTIFICATION_ERROR)
      })
  }

  private doStartBattle = async (host: string) => {
    const { scatter, dispatchPushNotification } = this.props
    startBattle(scatter, host)
      .then(() => {
        setTimeout(this.refresh, 500)
        dispatchPushNotification("Ready to Battle!", NOTIFICATION_SUCCESS)
      })
      .catch((err: any) => {
        setTimeout(this.refresh, 500)
        dispatchPushNotification(`Fail to confirm Battle ${err.eosError}`, NOTIFICATION_ERROR)
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
    identity: getEosAccount(state.identity),
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(BattleScreen)