import * as React from "react"
import * as moment from "moment"
import { MonsterProps } from "./monsters"
import { State } from "../../store"
import { connect } from "react-redux"
import { getEosAccount, getEosAuthorization, getContract } from "../../utils/scatter"

interface Props {
  monster: MonsterProps,
  eosAccount: string,
  eosAuthorization: any,
  scatter: any
}

class MonsterCard extends React.Component<Props, {}> {

  public render() {

    const { monster, eosAccount } = this.props

    const hasControl = eosAccount === monster.owner

    return (
      <div className="card">
        <div className="card-content">
            <p className={`title is-4 ${monster.deathAt ? "has-text-danger" : ""}`}>{monster.name}</p>
        </div>
        {this.renderImage()}
        <div className="card-content">
            <div className="content">
              {this.renderHeader()}
              {this.renderStats()}
            </div>
        </div>
        {hasControl && this.renderFooter()}
      </div>
    )
  }

  private renderImage() {

    const { monster } = this.props

    const figureClass = `image monster-image is-square ${monster.deathAt ? "grayscale" : ""}`
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
        <p>
          <span className="is-6">
            <b>Owner:</b> {monster.owner}
          </span>
          <span className="is-pulled-right ">#{monster.id}</span>
        </p>
        <div className="is-6">
          <p>
            Birth Date:
            {" "}
            <time dateTime={createdAtIso}>{createdAtText}</time>
            <br/>
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
          <b>HP: </b>
          <progress className="progress is-danger" max="100" value={monster.health}>{monster.health}</progress>
        </p>
        <div className="columns is-multiline">
          <div className="column is-half">
            <b>Food: </b>
            <progress className="progress is-primary" max="100" value={monster.hunger}>{monster.hunger}</progress>
          </div>
          <div className="column is-half">
            <b>Energy: </b>
            <progress className="progress is-success" max="100" value={monster.awake}>{monster.awake}</progress>
          </div>
        </div>
      </React.Fragment>
    )
  }

  private renderFooter() {

    const { monster } = this.props

    return (
      <footer className="card-footer">
        { monster.deathAt ?
        <a className="card-footer-item" data-empty="">Delete Monster</a> : <React.Fragment>
          <a className="card-footer-item" onClick={this.requestFeed}>Feed</a>
          <a className="card-footer-item" data-empty="">Bed Time!</a>
        </React.Fragment>
        }
      </footer>
    )
  }

  private requestFeed = async () => {
    const { scatter, eosAuthorization, monster } = this.props

    const contract = await getContract(scatter)

    console.info(contract)

    const feedpet = await contract.feedpet(monster.id, eosAuthorization.permission)
      .catch(() => alert("An error happened while feeding the monster"))

    console.info(feedpet)

    if (feedpet) {
      alert("Pet fed successfully!")
    }
  }
}

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)
  const eosAuthorization = getEosAuthorization(state.identity)

  return {
    eosAccount,
    eosAuthorization,
    scatter: state.scatter
  }
}

export default connect(mapStateToProps)(MonsterCard)