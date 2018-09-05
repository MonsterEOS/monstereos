import * as React from "react"
import * as moment from "moment"
import { OfferProps } from "./market"
import { monsterImageSrc } from "../monsters/monsters"
import { State, GlobalConfig, NOTIFICATION_SUCCESS, pushNotification, NOTIFICATION_ERROR } from "../../store"
import { connect } from "react-redux"
import { getEosAccount } from "../../utils/scatter"
import { trxOfferPetMarket } from "../../utils/eos"
import { Link } from "react-router-dom"

interface Props {
  offer: OfferProps,
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

class OfferCard extends React.Component<Props, {}> {

  public render() {

    const { offer, eosAccount, selected } = this.props
    const monster = offer.monster

    const hasControl = eosAccount === monster.owner

    const selectedClass = selected ? "monster-selected" : ""

    return (
      <div className="column monster-column">
        <div className={`card ${selectedClass}`}>
          <div className="card-content">
            {this.renderHeader()}
          </div>
          {this.renderImage()}
          {hasControl && this.renderFooter()}
        </div>
      </div>
    )
  }

  private renderImage() {

    const { offer } = this.props
    const monster = offer.monster

    const figureClass = `image monster-image ${monster.deathAt ? "grayscale" : ""}`
    const monsterImage = monsterImageSrc(monster.type)

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

    const { offer, hideLink } = this.props
    const monster = offer.monster

    // const createdAt = moment(monster.createdAt)
    // const createdAtText = createdAt.format("MMMM, D YYYY @ h:mm a")
    // const createdAtIso = createdAt.toLocaleString()

    const deathAt = moment(monster.deathAt)
    const deathAtText = deathAt.format("MMMM, D YYYY @ h:mm a")
    const deathAtIso = deathAt.toLocaleString()

    const aliveDuration = (monster.deathAt ? monster.deathAt : Date.now()) - monster.createdAt
    const aliveDurationText = moment.duration(aliveDuration).humanize()

    const headerContent =
      <React.Fragment>
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
      </React.Fragment>

    return (
      <div className="monster-card-header">
        { !hideLink ?
          <Link to={`/monster/${monster.id}`} className="monster-header-link">
            {headerContent}
          </Link>
        :
          headerContent
        }
      </div>
    )
  }

  private renderFooter() {

    const { offer, customActions, eosAccount } = this.props

    let actions: MonsterAction[] = []
    if (offer.user === eosAccount) {
      actions.push({action: this.requestUpdateOffer, label: "Update Offer"})
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

  private requestUpdateOffer = () => {
    const { scatter, offer, requestUpdate, dispatchPushNotification } = this.props
    const monster = offer.monster

    trxOfferPetMarket(scatter, monster.id, offer.newOwner)
      .then((res: any) => {
        console.info(`Pet ${monster.id} was offered to ${offer.newOwner} successfully`, res)
        dispatchPushNotification(`Pet ${monster.name} was offered to ${offer.newOwner} successfully`, NOTIFICATION_SUCCESS)
        if (requestUpdate) {
          requestUpdate()
        }
      }).catch((err: any) => {
        console.error(`Fail to offer monster ${monster.id}`, err)
        dispatchPushNotification(`Fail to offer ${monster.name}`, NOTIFICATION_ERROR)
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

export default connect(mapStateToProps, mapDispatchToProps)(OfferCard)