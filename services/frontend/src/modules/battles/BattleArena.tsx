import * as React from "react"
import { MonsterType, Arena, MonsterArenaStats, Element } from "./battles"
import { State, pushNotification } from "../../store"
import { getEosAccount } from "../../utils/scatter"
import { connect } from "react-redux"
import { monsterImageSrc } from "../monsters/monsters"

const AVAILABLE_ARENA_ARTS = 18

const getArenaBackground = (startedAt: number) => {
  return `arena-${startedAt % AVAILABLE_ARENA_ARTS}`
}

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

  return !showLabelAndCancel ? <a key={elementId}
    className={elementClass}
    onClick={onClick}>
    <i className={`fa fa-${elementDisplay[1]}`} />
  </a> : <React.Fragment>
    <a className={elementClass} onClick={() => onClick(0,-1)}>{elementDisplay[2]} Attack <i className="fa fa-ban" style={{marginLeft:5}} /></a>
  </React.Fragment>
}

const hpBar = (hpValue: number, monsterName: string) => {
  const hpClass = hpValue > 65 ? "is-success" :
    hpValue > 30 ? "is-warning" : "is-danger"

  return <div>
    <progress
      className={`progress ${hpClass}`}
      value={hpValue}
      data-label={monsterName}
      max={100}>
      {hpValue}%
    </progress>
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
  selectedPetId?: number
}

class BattleArena extends React.Component<Props, {}> {

  public render() {

    const { arena } = this.props

    return <div className={`battle-arena ${getArenaBackground(arena.startedAt)}`}>
      {arena.petsStats.map(this.renderArenaMonster)}
    </div>
  }

  private renderArenaMonster = (monster: MonsterArenaStats) => {
    console.info(monster)

    const {
      arena,
      identity,
      selectedEnemyId,
      enemySelection,
      selectedElementId
    } = this.props

    const myMonster = monster.player === identity

    const myTurn = arena.commits[0].player === identity ||
      Date.now() - arena.lastMoveAt > 60000

    const monsterClass =
      (myMonster ? "my-monster" : "enemy-monster") +
      (monster.pet_id === selectedEnemyId ? " active" : "")

    const enemyClick = !myMonster ?
      () => enemySelection(monster.pet_id) :
      undefined

    return <div className="arena-monster"
      key={monster.pet_id}>
      <figure
        className="image">
        <img
          src={monsterImageSrc(monster.pet_type)}
          className={monsterClass}
          onClick={enemyClick} />
        {hpBar(monster.hp, monster.player)}
        {myMonster && myTurn && this.attackButtons(monster)}
        {selectedEnemyId === monster.pet_id &&
          (selectedElementId !== undefined && selectedElementId >= 0) &&
          this.confirmAttackButton()}
      </figure>
    </div>
  }

  private confirmAttackButton = () => {
    return <a className="button is-small is-danger">
      Submit Attack
    </a>
  }

  private attackButtons = (pet: MonsterArenaStats) => {

    const { monsterTypes, attackSelection, selectedElementId, selectedPetId } = this.props

    const monsterType = monsterTypes.find((type) => type.id === pet.pet_type)

    const elements = monsterType ? monsterType.elements : [0] // neutral

    console.info(pet.pet_id, selectedPetId)

    return <div className="buttons elements">
      {pet.pet_id === selectedPetId ?
      elementButton(selectedElementId!, attackSelection, true) :
      elements.map((element) => {
        const doAttack = () => attackSelection(pet.pet_id, element)
        return elementButton(element, doAttack, false)
      })}
    </div>
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