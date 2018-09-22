import * as React from "react"
import * as moment from "moment"
import {
  MonsterProps,
  // monsterImageSrc,
  monsterModelSrc,
  getCurrentAction,
} from "./monsters"
import get3dModel from "../monsters/monster3DMatrix"
import { State, GlobalConfig, NOTIFICATION_SUCCESS, pushNotification, NOTIFICATION_ERROR } from "../../store"
import { connect } from "react-redux"
import { getEosAccount } from "../../utils/scatter"
import { trxPet } from "../../utils/eos"
import { Link } from "react-router-dom"
import { Monster3DProfile, ActionType } from "react-monstereos-profile"

interface Props {
  monster: MonsterProps,
  eosAccount: string,
  globalConfig: GlobalConfig,
  requestUpdate?: any,
  dispatchPushNotification: any,
  scatter: any,
  selected?: boolean,
  hideLink?: boolean,
  hideActions?: boolean,
  customActions?: MonsterAction[]
}

export interface MonsterAction {
  label: string,
  action: any
}

class MonsterCard extends React.Component<Props, {}> {

  public render() {

    const { monster, eosAccount, selected } = this.props

    const hasControl = eosAccount === monster.owner

    const selectedClass = selected ? "monster-selected" : ""

    return (
      <div className="column monster-column">
        <div className={`card monster-card ${selectedClass}`}>
          <div className="card-content">
            <div className="columns is-mobile">
              <div className="column">
                {this.renderMonster()}
              </div>
              <div className="column is-three-fifths">
                {this.renderHeader()}
                {!monster.deathAt && this.renderStats()}
              </div>
            </div>
          </div>
          {hasControl && this.renderFooter()}
        </div>
      </div>
    )
  }

  // private renderImage() {

  //   const { monster } = this.props

  //   const figureClass = `image monster-image ${monster.deathAt ? "grayscale" : ""}`
  //   const monsterImage = monsterImageSrc(monster.type)

  //   const sleepingClass = monster.isSleeping ? "sleeping" : ""
  //   const sleepingAnimation = monster.isSleeping && <img src="/images/zzz.gif" className="sleep-gif" />

  //   return (
  //     <div className="card-image">
  //       <figure className={figureClass}>
  //         <img
  //           alt={monster.name}
  //           className={sleepingClass}
  //           src={monsterImage} />
  //         {sleepingAnimation}
  //       </figure>
  //     </div>
  //   )
  // }

  private render3DProfile() {

    const { monster } = this.props

    const { model, position, rotation, cameraPosition } = get3dModel(monster.type)

    return (
      <Monster3DProfile
        typeId={model}
        path={monsterModelSrc(model)}
        action={getCurrentAction(monster, ActionType)}
        position={position}
        rotation={rotation}
        cameraPosition={cameraPosition}
        size={{ height: "228px" }}
        background={{ alpha: 0 }}
        zoom={false}
      />
    )
  }

  private renderMonster = () =>
    this.render3DProfile()

  private renderHeader() {

    const { monster, hideLink } = this.props

    // const createdAt = moment(monster.createdAt)
    // const createdAtText = createdAt.format("MMMM, D YYYY @ h:mm a")
    // const createdAtIso = createdAt.toLocaleString()

    const deathAt = moment(monster.deathAt)
    const deathAtDate = deathAt.format("MMMM Do YYYY")
    const deathAtTime = deathAt.format("h:mm:ss a")
    const deathAtIso = deathAt.toLocaleString()

    const aliveDuration = (monster.deathAt ? monster.deathAt : Date.now()) - monster.createdAt
    const aliveDurationText = moment.duration(aliveDuration).humanize()

    const headerContent =
      <React.Fragment>
        <div className={`monster-card-title ${monster.deathAt ? "dead" : ""}`}>
          <div>
            <div className="monster-name">{monster.name}</div>
            <div className="monster-status">
            {monster.deathAt ?
              <p>
                Stayed alive for {aliveDurationText}
              </p>
              : <p>Is alive for {aliveDurationText}</p>
            }
            </div>
          </div>
          <div className="monster-id">#{monster.id}</div>
        </div>
        { monster.deathAt > 0 &&
        <div>
          <p>Death Date:<br/> {deathAtDate}</p>
          <p>Time of Death:<br/> <time dateTime={deathAtIso}>{deathAtTime}</time></p>
        </div>
        }
      </React.Fragment>

    return (
      <div className="monster-card-header">
        {!hideLink ?
          <Link to={`/monster/${monster.id}`} className="monster-header-link">
            {headerContent}
          </Link>
          :
          headerContent
        }
      </div>
    )
  }

  private renderStats() {

    const { monster } = this.props

    return (
      <div className="monster-card-stats">
        <div className="progress-bar red monster-hp-card">
          <span style={{width: `${monster.health}%`}}>HP</span>
        </div>
        <p>Food</p>
        <div className="progress-bar blue">
          <span style={{width: `${monster.hunger}%`}} />
        </div>
        <p>Energy</p>
        <div className="progress-bar green">
          <span style={{width: `${monster.energy}%`}} />
        </div>
        {/* <p className="hp-card is-large has-margin-top">
          <progress className="progress is-danger" max="100" value={monster.health} data-label="HP" />
        </p>
        <p>
          <progress className="food-card progress is-primary" max="100" value={monster.hunger} data-label="Food" />
        </p>
        <p>
          <progress className="energy-card progress is-success" max="100" value={monster.energy} data-label="Energy" />
        </p> */}
      </div>
    )
  }

  private renderFooter() {

    const { monster, hideActions, customActions } = this.props

    let actions: MonsterAction[] = []

    if (!hideActions && monster.deathAt) {
      actions.push({ action: this.requestDestroy, label: "Delete Monster" })
    } else if (!hideActions && monster.isSleeping) {
      actions.push({ action: this.requestAwake, label: "Wake up!" })
    } else if (!hideActions) {
      actions.push({ action: this.requestFeed, label: "Feed" })
      actions.push({ action: this.requestSleep, label: "Bed Time!" })
    }

    if (customActions) {
      actions = actions.concat(customActions)
    }

    return (
      <footer className="card-footer">
        {actions.map((action, index) => (
          <a key={index}
            className="card-footer-item"
            onClick={action.action}>
            {action.label}
          </a>
        ))}
      </footer>
    )
  }

  private requestFeed = () => {
    this.petAction("feedpet", "feed")
  }

  private requestAwake = async () => {
    this.petAction("awakepet", "wake")
  }

  private requestSleep = async () => {
    this.petAction("bedpet", "bed")
  }

  private requestDestroy = async () => {
    this.petAction("destroypet", "destroy")
  }

  private petAction = (action: string, text: string) => {
    const { scatter, monster, requestUpdate, dispatchPushNotification } = this.props

    trxPet(action, scatter, monster.id)
      .then((res: any) => {
        console.info(`Pet ${monster.id} ${text} successfully`, res)
        dispatchPushNotification(`Pet ${monster.name} ${text} successfully`, NOTIFICATION_SUCCESS)
        if (requestUpdate) {
          requestUpdate()
        }
      }).catch((err: any) => {
        dispatchPushNotification(`Fail to ${text} ${monster.name} ${err.eosError}`, NOTIFICATION_ERROR)
      })
  }
}

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    globalConfig: state.globalConfig,
    scatter: state.scatter
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(MonsterCard)