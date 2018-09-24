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

import elementAnimal from "../../assets/images/elements/animal.svg"
import elementEarth from "../../assets/images/elements/earth.svg"
import elementFire from "../../assets/images/elements/fire.svg"
import elementLightning from "../../assets/images/elements/lightning.svg"
import elementMetal from "../../assets/images/elements/metal.svg"
import elementNeutral from "../../assets/images/elements/neutral.svg"
import elementPoison from "../../assets/images/elements/poison.svg"
import elementUndead from "../../assets/images/elements/undead.svg"
import elementWater from "../../assets/images/elements/water.svg"
import elementWood from "../../assets/images/elements/wood.svg"

// const AVAILABLE_ARENA_ARTS = 18

// const getArenaBackground = (startedAt: number) => {
//   return `arena-${startedAt % AVAILABLE_ARENA_ARTS}`
// }

const getElementData = (elementId: number) => {

  let name
  let img

  switch (elementId) {
    case 1:
      name = "wood"
      img = elementWood
      break
    case 2:
      name = "earth"
      img = elementEarth
      break
    case 3:
      name = "water"
      img = elementWater
      break
    case 4:
      name = "fire"
      img = elementFire
      break
    case 5:
      name = "metal"
      img = elementMetal
      break
    case 6:
      name = "animal"
      img = elementAnimal
      break
    case 7:
      name = "poison"
      img = elementPoison
      break
    case 8:
      name = "undead"
      img = elementUndead
      break
    case 9:
      name = "lightning"
      img = elementLightning
      break
    default:
      name = "neutral"
      img = elementNeutral
  }

  return { name, img }
}

const elementButton = (
  elementId: number,
  onClick: any,
  isSelected: boolean
) => {

  const element = getElementData(elementId)

  const elementClass = `attack-button ${element.name} ${isSelected ? "active" : ""}`

  return <a key={elementId}
      className={elementClass}
      onClick={onClick}>
      <img src={element.img} />
      <span className="is-hidden-mobile">{element.name}</span>
    </a>
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
  battleCountdown: number,
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
      selectedElementId,
      battleCountdown
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
      />
      {this.renderHpBars(monsters)}
      <div className="mobile-arena-countdown">{battleCountdown}</div>
      {this.renderHpNotifications(monsters)}
      <div className="battle-buttons-container">
        {myTurn ? this.attackButtons(monsters.myMonster) :
        isBattleGoing ? <span>Waiting for Opponent Turn</span> : null}
      </div>
      {myTurn && this.confirmAttackButton(selectedElementId)}
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

    const hps = Object.keys(monsters).map(
      (monster, index) => {
        const { hp, player } = monsters[monster]
        return this.hpBar(hp, player, player === identity, index+1)
      }
    )

    return <div className="arena top-bar">{hps}</div>
  }

  private hpBar(hpValue: number, monsterName: string, isMyMonster: boolean, index: number) {
    const hpColor = hpValue > 50 ? "green" : "red"

    return (
      <div className={`progress-bar ${hpColor} monster-hp-card hp-bar-${index}`}>
        <span style={{width: `${hpValue}%`}} />
        <p>{monsterName}</p>
      </div>
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

  private confirmAttackButton = (selectedElementId: number | undefined) => {

    if (selectedElementId !== undefined && selectedElementId >= 0) {
      const { name } = getElementData(selectedElementId)
      return <a
        className="confirm-attack-button"
        onClick={this.props.submitAttack}>
        <span>{name}</span> Attack
      </a>
    } else {
      return <div className="pending-attack-button">
        Select Attack
      </div>
    }
  }

  private attackButtons = (pet: MonsterArenaStats) => {

    const { monsterTypes, attackSelection, selectedElementId } = this.props

    const monsterType = monsterTypes.find((type) => type.id === pet.pet_type)

    const elements = monsterType ? monsterType.elements : [0] // neutral

    return <React.Fragment>
      {elements.map((element) => {
          const doAttack = () => attackSelection(pet.pet_id, element)
          return elementButton(element, doAttack, element === selectedElementId)
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