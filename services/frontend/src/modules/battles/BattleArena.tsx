import * as React from "react"
import { MonsterType, Arena, MonsterArenaStats, Element, isWatcher, BATTLE_PHASE_GOING } from "./battles"
import { State, pushNotification } from "../../store"
import { getEosAccount } from "../../utils/scatter"
import { connect } from "react-redux"
import {
  monsterModelSrc,
} from "../monsters/monsters"
import get3dModel from "../monsters/monster3DMatrix"
import Arena3D from "monster-battle-react-component"

// const AVAILABLE_ARENA_ARTS = 18

// const getArenaBackground = (startedAt: number) => {
//   return `arena-${startedAt % AVAILABLE_ARENA_ARTS}`
// }

const elementButton = (
  elementId: number,
  onClick: any,
  showLabelAndCancel: boolean
) => {

  let elementDisplay = []

  switch (elementId) {
    case 1:
      elementDisplay = ["is-brown", "tree", "Wood"]
      break
    case 2:
      elementDisplay = ["is-success", "leaf", "Earth"]
      break
    case 3:
      elementDisplay = ["is-info", "tint", "Water"]
      break
    case 4:
      elementDisplay = ["is-danger", "fire", "Fire"]
      break
    case 5:
      elementDisplay = ["is-dark", "wrench", "Metal"]
      break
    case 6:
      elementDisplay = ["is-primary", "paw", "Animal"]
      break
    case 7:
      elementDisplay = ["is-purple", "bug", "Poison"]
      break
    case 8:
      elementDisplay = ["is-black", "adjust", "Undead"]
      break
    case 9:
      elementDisplay = ["is-warning", "bolt", "Lightning"]
      break
    default:
      elementDisplay = ["", "asterisk", "Neutral"]
  }

  const elementClass = `button is-small ${elementDisplay[0]}`

  return !showLabelAndCancel
    ? (<a key={elementId}
      className={elementClass}
      onClick={onClick}
    >
      <i className={`fa fa-${elementDisplay[1]}`} />
    </a>)
    : (<a
      className={elementClass}
      onClick={() => onClick(0, -1)}
    >
      {elementDisplay[2]} Attack <i className="fa fa-ban" style={{ marginLeft: 5 }} />
    </a>)
}

const winnerBanner = (winner: string, isWinner?: boolean) => {
  const status = isWinner === undefined ?
    ["has-text-info", `${winner} WON!`] :
    isWinner ? ["has-text-success", "You WON!"] :
      ["has-text-danger", "You LOST!"]

  return <div className={`battle-winner-banner ${status[0]}`}>
    {status[1]}
  </div>
}

interface Props {
  arena: Arena,
  scatter: any,
  identity: string,
  elements: Element[],
  monsterTypes: MonsterType[],
  attackSelection: any,
  enemySelection: any,
  selectedEnemyId?: number,
  selectedElementId?: number,
  selectedPetId?: number,
  submitAttack: any,
  winner?: string
}

interface HpLog {
  petId: number,
  hpDiff: number,
  time: number
}

interface FightingMonsters {
  myMonster: MonsterArenaStats,
  enemyMonster: MonsterArenaStats
}

interface ReactState {
  hpLog: HpLog[],
  enemyIsSet: boolean
}

class BattleArena extends React.Component<Props, ReactState> {

  public state = {
    hpLog: [] as HpLog[],
    enemyIsSet: false
  }

  public render() {

    const { arena, winner, identity } = this.props

    const isWinner = isWatcher(arena, identity) ? undefined : winner === identity

    const isBattleGoing = arena.phase === BATTLE_PHASE_GOING

    return <div className={`battle-arena`}>
      {this.renderArenaMonster(arena.petsStats, isBattleGoing)}
      {winner && winnerBanner(winner, isWinner)}
    </div>
  }

  public componentDidUpdate(prevProps: Props) {
    const { arena, identity } = this.props
    // Typical usage (don't forget to compare props):
    if (arena.petsStats !== prevProps.arena.petsStats) {
      this.updateHpLog(arena.petsStats, prevProps.arena.petsStats)
    }
    // pre-selecting the enemy pet_id
    if (identity && !this.state.enemyIsSet) {
      this.props.enemySelection(
        this.getFightingMonsters(
          arena.petsStats, identity
        )
          .enemyMonster
          .pet_id
      )
      this.setState({ enemyIsSet: true })
    }
  }

  private updateHpLog = (
    newStats: MonsterArenaStats[],
    oldStats: MonsterArenaStats[],
  ) => {
    const newLogs = newStats.map((newStat) => {
      const oldStat = oldStats.find((item) => item.pet_id === newStat.pet_id)
      const hpDiff = oldStat ? newStat.hp - oldStat.hp : 0
      return { petId: newStat.pet_id, hpDiff, time: Date.now() }
    }).filter((item) => item.hpDiff !== 0)

    if (newLogs.length) {
      this.setState({ hpLog: this.state.hpLog.concat(newLogs) })
    }
  }

  private renderArenaMonster = (petsStats: MonsterArenaStats[], isBattleGoing: boolean) => {
    const {
      arena,
      identity,
      selectedElementId
    } = this.props

    if (identity === "") {
      return <span className="loading-message">Loading...</span>
    }

    const monsters: FightingMonsters = this.getFightingMonsters(petsStats, identity)

    if (!(monsters.myMonster && monsters.enemyMonster)) {
      return <span className="loading-message">Loading...</span>
    }

    const { model: myModel } = get3dModel(monsters.myMonster.pet_type)
    const { model: enemyModel } = get3dModel(monsters.enemyMonster.pet_type)

    const myTurn = isBattleGoing &&
      (arena.commits[0].player === identity ||
        Date.now() - arena.lastMoveAt > 60000)

    return <div className="arena-monster">
      <Arena3D
        myMonster={monsterModelSrc(myModel)}
        enemyMonster={monsterModelSrc(enemyModel)}
        size={{ width: "100%", height: "100%" }}
        background={{ alpha: 1 }}
        enableGrid
      />
      {this.renderHpBars(monsters)}
      {this.renderHpNotifications(monsters)}
      <div className="battle-buttons-container">
        {myTurn && this.attackButtons(monsters.myMonster)}
        {myTurn && (selectedElementId !== undefined &&
          selectedElementId >= 0) && this.confirmAttackButton()}
      </div>
    </div>
  }

  private getFightingMonsters = (
    petsStats: MonsterArenaStats[],
    identity: string
  ): FightingMonsters => {
    return petsStats.reduce((fightingMonsters, current) => {
      fightingMonsters[
        current.player === identity
          ? "myMonster"
          : "enemyMonster"
      ] = current
      return fightingMonsters
    }, {} as FightingMonsters)
  }

  private renderHpBars = (monsters: FightingMonsters) => {
    const { identity } = this.props
    return Object.keys(monsters).map(
      monster => {
        const { hp, player } = monsters[monster]
        return this.hpBar(hp, player, player === identity)
      }
    )
  }

  private hpBar(hpValue: number, monsterName: string, isMyMonster: boolean) {
    const hpClass = hpValue > 65 ? "is-success" :
      hpValue > 30 ? "is-warning" : "is-danger"

    return (
      <progress
        key={monsterName}
        className={`progress ${hpClass} ` +
          `${isMyMonster ? "my-monster-hp" : "enemy-monster-hp"}`}
        value={hpValue}
        data-label={monsterName}
        max={100}
      >
        {hpValue}%
    </progress>
    )
  }

  private renderHpNotifications = (monsters: FightingMonsters) => {
    const { identity } = this.props
    return Object.keys(monsters).map(
      monster => {
        const { player } = monsters[monster]
        return this.hpNotification(
          monsters[monster].pet_id,
          player === identity
        )
      }
    )
  }

  private hpNotification = (petId: number, isMyMonster: boolean) => {
    const { hpLog } = this.state

    const notifications = hpLog
      .filter(
        (item) => (item.petId === petId &&
          (Date.now() - item.time) < 5000)
      ).map((item, index) => (
        <span
          key={index}
          className={`monster-hp-notification ` +
            `${isMyMonster
              ? "my-monster-hp-notification"
              : "enemy-monster-hp-notification"}`}>
          {item.hpDiff}
        </span>
      ))

    return notifications.length ? notifications : null
  }

  private confirmAttackButton = () => {
    return <a
      className="button is-small is-danger"
      onClick={this.props.submitAttack}>
      Submit Attack
    </a>
  }

  private attackButtons = (pet: MonsterArenaStats) => {

    const { monsterTypes, attackSelection, selectedElementId, selectedPetId } = this.props

    const monsterType = monsterTypes.find((type) => type.id === pet.pet_type)

    const elements = monsterType ? monsterType.elements : [0] // neutral

    return <React.Fragment>
      {pet.pet_id === selectedPetId ?
        elementButton(selectedElementId!, attackSelection, true) :
        elements.map((element) => {
          const doAttack = () => attackSelection(pet.pet_id, element)
          return elementButton(element, doAttack, false)
        })}
    </React.Fragment>
  }
}

const mapStateToProps = (state: State) => {
  return {
    scatter: state.scatter,
    identity: getEosAccount(state.identity)
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(BattleArena)