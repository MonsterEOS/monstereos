import * as React from "react"
import * as moment from "moment"
import { MonsterProps } from "./monsters"
import { State, GlobalConfig } from "../../store"
import { connect } from "react-redux"
import { getEosAccount } from "../../utils/scatter"
import { trxPet } from "../../utils/eos"

interface Props {
  monster: MonsterProps,
  eosAccount: string,
  globalConfig: GlobalConfig,
  requestUpdate: any,
  scatter: any
}

class MonsterCard extends React.Component<Props, {}> {

  public render() {

    const { monster, eosAccount } = this.props

    const hasControl = eosAccount === monster.owner

    return (
      <div className="card">
        <div className="card-content">
          <p className={`title is-4 ${monster.deathAt ? "has-text-danger" : ""}`}>
            {monster.name}
            <small className="is-pulled-right">#{monster.id}</small>
          </p>
        </div>
        {this.renderImage()}
        <div className="card-content">
            <div className="content">
              {this.renderHeader()}
              {!monster.deathAt && this.renderStats()}
            </div>
        </div>
        {hasControl && this.renderFooter()}
      </div>
    )
  }

  private renderImage() {

    const { monster } = this.props

    const figureClass = `image monster-image ${monster.deathAt ? "grayscale" : ""}`
    const monsterImage = `/images/monsters/monster-${monster.type}.png`

    const sleepingClass = monster.isSleeping ? "sleeping" : ""
    const sleepingAnimation = monster.isSleeping && <img src="/images/zzz.gif" />

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

    const createdAt = moment(monster.createdAt)
    const createdAtText = createdAt.format("MMMM, D YYYY @ h:mm a")
    const createdAtIso = createdAt.toLocaleString()

    const deathAt = moment(monster.deathAt)
    const deathAtText = deathAt.format("MMMM, D YYYY @ h:mm a")
    const deathAtIso = deathAt.toLocaleString()

    const aliveDuration = (monster.deathAt ? monster.deathAt : Date.now()) - monster.createdAt
    const aliveDurationText = moment.duration(aliveDuration).humanize()

    return (
      <React.Fragment>
        <div className="is-6">
          <p>
            <span className="is-hidden-mobile">
              Birth Date:
              {" "}
              <time dateTime={createdAtIso}>{createdAtText}</time>
            </span>
            <br className="is-hidden-mobile" />
            { monster.deathAt ?
            <React.Fragment>
              <span className="is-6 has-text-danger">Stayed alive for {aliveDurationText}</span>
              <br/>
              <span className="is-6 has-text-danger"><time dateTime={deathAtIso}>DEAD IN {deathAtText}</time></span>
            </React.Fragment>
            : <span className="is-6 has-text-success">Is alive for {aliveDurationText}</span>
            }
          </p>
        </div>
      </React.Fragment>
    )
  }

  private renderStats() {

    const { monster } = this.props

    return (
      <React.Fragment>
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
      </React.Fragment>
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

    const feedInterval = Date.now() - monster.lastFeedAt
    if (feedInterval < globalConfig.min_hunger_interval) {
      return alert(`${monster.name} is not hungry yet`)
    }

    this.petAction("feedpet", "feed")
  }

  private requestAwake = async () => {
    const { monster, globalConfig } = this.props

    const awakeInterval = Date.now() - monster.lastBedAt
    if (awakeInterval < globalConfig.min_sleep_period) {
      return alert(`${monster.name} is not tired yet`)
    }

    this.petAction("awakepet", "wake")
  }

  private requestSleep = async () => {
    const { monster, globalConfig } = this.props

    const bedInterval = Date.now() - monster.lastAwakeAt
    if (bedInterval < globalConfig.min_awake_interval) {
      return alert(`${monster.name} is not tired yet`)
    }

    this.petAction("bedpet", "bed")
  }

  private requestDestroy = async () => {
    const { monster, globalConfig } = this.props

    const bedInterval = Date.now() - monster.lastAwakeAt
    if (bedInterval < globalConfig.min_awake_interval) {
      return alert(`${monster.name} is not tired yet`)
    }

    this.petAction("destroypet", "destroy")
  }

  private petAction = (action: string, text: string) => {
    const { scatter, monster, requestUpdate } = this.props

    trxPet(action, scatter, monster.id)
      .then((res: any) => {
        console.info(`Pet ${monster.id} ${text} successfully`, res)
        alert(`Pet ${monster.name} ${text} successfully`)
        requestUpdate()
      }).catch((err: any) => {
        console.error(`Fail to ${text} ${monster.id}`, err)
        alert(`Fail to ${text} ${monster.name}`)
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

export default connect(mapStateToProps)(MonsterCard)