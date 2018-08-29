import * as React from "react"
import * as moment from "moment"
import { MonsterProps } from "./monsters"
import { State, GlobalConfig, NOTIFICATION_SUCCESS, pushNotification, NOTIFICATION_ERROR, NOTIFICATION_WARNING } from "../../store"
import { connect } from "react-redux"
import { getEosAccount } from "../../utils/scatter"
import { trxPet } from "../../utils/eos"
import { Link } from "react-router-dom"

interface Props {
  monster: MonsterProps,
  eosAccount: string,
  globalConfig: GlobalConfig,
  requestUpdate: any,
  dispatchPushNotification: any,
  scatter: any
}

class MonsterCard extends React.Component<Props, {}> {

  public render() {

    const { monster, eosAccount } = this.props

    const hasControl = eosAccount === monster.owner

    return (
      <div className="card">
        <div className="card-content">
          {this.renderHeader()}
        </div>
        {this.renderImage()}
        {!monster.deathAt && this.renderStats()}
        {hasControl && this.renderFooter()}
      </div>
    )
  }

  private renderImage() {

    const { monster } = this.props

    const figureClass = `image monster-image ${monster.deathAt ? "grayscale" : ""}`
    const monsterImage = `/images/monsters/monster-${monster.type}.png`

    const sleepingClass = monster.isSleeping ? "sleeping" : ""
    const sleepingAnimation = monster.isSleeping && <img src="/images/zzz.gif" className="sleep-gif" />

    return (
      <div className="card-image">
        <figure className={figureClass}>
          <img
            alt={monster.name}
            className={sleepingClass}
            src={monsterImage} />
          {sleepingAnimation}
        </figure>
      </div>
    )
  }

  private renderHeader() {

    const { monster } = this.props

    // const createdAt = moment(monster.createdAt)
    // const createdAtText = createdAt.format("MMMM, D YYYY @ h:mm a")
    // const createdAtIso = createdAt.toLocaleString()

    const deathAt = moment(monster.deathAt)
    const deathAtText = deathAt.format("MMMM, D YYYY @ h:mm a")
    const deathAtIso = deathAt.toLocaleString()

    const aliveDuration = (monster.deathAt ? monster.deathAt : Date.now()) - monster.createdAt
    const aliveDurationText = moment.duration(aliveDuration).humanize()

    return (
      <React.Fragment>
        <div className="monster-card-header">
          <p>
            <Link to={`/monster/${monster.id}`}>
              <span className={`title is-4 ${monster.deathAt ? "has-text-danger" : ""}`}>
                {monster.name}
                <small className="is-pulled-right">#{monster.id}</small>
              </span>
              <br/>
              { monster.deathAt ?
              <React.Fragment>
                <span className="is-6 has-text-danger">Stayed alive for {aliveDurationText}</span>
                <br/>
                <span className="is-6 has-text-danger"><time dateTime={deathAtIso}>DEAD IN {deathAtText}</time></span>
              </React.Fragment>
              : <span className="has-text-success">Is alive for {aliveDurationText}</span>
              }
            </Link>
          </p>
        </div>
      </React.Fragment>
    )
  }

  private renderStats() {

    const { monster } = this.props

    return (
      <div className="monster-card-stats">
        <p className="is-large has-margin-top">
          <progress className="progress is-danger" max="100" value={monster.health} data-label="HP" />
        </p>
        <div className="columns is-multiline is-mobile">
          <div className="column is-half">
            <progress className="progress is-primary" max="100" value={monster.hunger} data-label="Food" />
          </div>
          <div className="column is-half">
            <progress className="progress is-success" max="100" value={monster.awake} data-label="Energy" />
          </div>
        </div>
      </div>
    )
  }

  private renderFooter() {

    const { monster } = this.props

    return (
      <footer className="card-footer">
        {
          monster.deathAt ?
            <a className="card-footer-item" onClick={this.requestDestroy}>Delete Monster</a> :
          monster.isSleeping ?
            <a className="card-footer-item" onClick={this.requestAwake}>Wake up!</a> :
            <React.Fragment>
              <a className="card-footer-item" onClick={this.requestFeed}>Feed</a>
              <a className="card-footer-item" onClick={this.requestSleep}>Bed Time!</a>
            </React.Fragment>
        }
      </footer>
    )
  }

  private requestFeed = () => {
    const { monster, globalConfig } = this.props

    const feedInterval = (Date.now() - monster.lastFeedAt) / 1000
    if (feedInterval < globalConfig.min_hunger_interval) {
      return this.warnAction(`${monster.name} is not hungry yet`)
    }

    this.petAction("feedpet", "feed")
  }

  private requestAwake = async () => {
    const { monster, globalConfig } = this.props

    const awakeInterval = (Date.now() - monster.lastBedAt) / 1000
    if (awakeInterval < globalConfig.min_sleep_period) {
      return this.warnAction(`${monster.name} is not recovered yet`)
    }

    this.petAction("awakepet", "wake")
  }

  private requestSleep = async () => {
    const { monster, globalConfig } = this.props

    const bedInterval = (Date.now() - monster.lastAwakeAt) / 1000
    if (bedInterval < globalConfig.min_awake_interval) {
      return this.warnAction(`${monster.name} is not tired yet`)
    }

    this.petAction("bedpet", "bed")
  }

  private requestDestroy = async () => {
    this.petAction("destroypet", "destroy")
  }

  private warnAction = (text: string) => {
    const { dispatchPushNotification } = this.props
    dispatchPushNotification(text, NOTIFICATION_WARNING)
  }

  private petAction = (action: string, text: string) => {
    const { scatter, monster, requestUpdate, dispatchPushNotification } = this.props

    trxPet(action, scatter, monster.id)
      .then((res: any) => {
        console.info(`Pet ${monster.id} ${text} successfully`, res)
        dispatchPushNotification(`Pet ${monster.name} ${text} successfully`, NOTIFICATION_SUCCESS)
        requestUpdate()
      }).catch((err: any) => {
        console.error(`Fail to ${text} ${monster.id}`, err)
        dispatchPushNotification(`Fail to ${text} ${monster.name}`, NOTIFICATION_ERROR)
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