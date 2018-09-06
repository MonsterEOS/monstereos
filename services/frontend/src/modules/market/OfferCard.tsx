import * as React from "react"
import * as moment from "moment"
import { OfferProps, amountOfAsset } from "./market"
import { monsterImageSrc } from "../monsters/monsters"
import { State, GlobalConfig, NOTIFICATION_SUCCESS, pushNotification, NOTIFICATION_ERROR, doLoadMyMonsters } from "../../store"
import { connect } from "react-redux"
import { getEosAccount } from "../../utils/scatter"
import { trxClaimPetMarket, trxRemoveOfferMarket } from "../../utils/eos"
import { Link } from "react-router-dom"

import NewOfferModal  from "./NewOfferModal"

interface Props {
  offer: OfferProps,
  eosAccount: string,
  globalConfig: GlobalConfig,
  requestUpdate?: any,
  dispatchPushNotification: any,
  dispatchDoLoadMyMonsters: any,
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

interface ReactState {
  showNewOfferModal:boolean
}

class OfferCard extends React.Component<Props, ReactState> {

  public state = {
    showNewOfferModal: false,
  }

  public render() {

    const { offer, selected, dispatchDoLoadMyMonsters } = this.props
    const monster = offer.monster

    const { showNewOfferModal } = this.state

    const selectedClass = selected ? "monster-selected" : ""
    
    const refetchMonstersAndOffers = () => {
      setTimeout(() => dispatchDoLoadMyMonsters(), 500)
    }

    const newOfferClosure = (doRefetch: boolean) => {
      this.setState({showNewOfferModal: false})
      if (doRefetch) {
        refetchMonstersAndOffers()
      }
    }

    return (
      <div className="column monster-column">
        <div className={`card ${selectedClass}`}>
          <div className="card-content">
            {this.renderHeader()}
          </div>
          {this.renderImage()}
          {this.renderFooter()}
        </div>
        {showNewOfferModal &&
        <NewOfferModal
          closeModal={newOfferClosure} 
          initialMonster = {monster}
          initialName = {offer.newOwner}
          initialAmount = { amountOfAsset(offer.value)}/>}
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

    const transferEnds = moment(offer.transferEndsAt)
    const transferEndsText = transferEnds.format("MMMM, D YYYY @ h:mm a")
    const transferEndsIso = transferEnds.toLocaleString()

    const aliveDuration = (monster.deathAt ? monster.deathAt : Date.now()) - monster.createdAt
    const aliveDurationText = moment.duration(aliveDuration).humanize()

    const headerContent =
      <React.Fragment>
        <span className={`title is-4 ${monster.owner !== offer.user || monster.name.length === 0 ? "has-text-danger" : ""}`}>
          Offer for<br/> {monster.name.length > 0 ? monster.name: "deleted monster"} (#{monster.id})
          <small className="is-pulled-right">#{offer.id}</small>
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
        <br/>
        <span className="is-6">
          owned by {monster.owner}
        </span>
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
        <div className="is-6">
          offered by {offer.user}
        </div>
        <div className="is-6">
          offered to {offer.newOwner}
        </div>
        <div className="is-6">
          for {offer.value}
        </div>
        {offer.transferEndsAt > 0 &&
          <div className="is-6">
            <time dateTime={transferEndsIso}>re-transferable from {transferEndsText}</time>
          </div>}
      </div>
    )
  }

  private renderFooter() {

    const { offer, customActions, eosAccount } = this.props

    let actions: MonsterAction[] = []
    if (offer.user === eosAccount) {
      actions.push({action: this.requestUpdateOffer, label: "Update Offer"})
      actions.push({action: this.requestDeleteOffer, label: "Delete Offer"})
    }
    // tslint:disable-next-line:no-console
    console.log(offer.id + "new owner:" + offer.newOwner + " eos:" + eosAccount)
    if (offer.newOwner === eosAccount) {
      actions.push({action: this.requestClaimMonster, label: "Claim Monster"})
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
    this.setState({showNewOfferModal:true})
  }

  private requestDeleteOffer = () => {
    const { scatter, offer, requestUpdate, dispatchPushNotification} = this.props
    const monster = offer.monster

    trxRemoveOfferMarket(scatter, monster.id)
      .then((res:any) => {
        console.info(`Offer for monster #${monster.id} was deleted successfully`, res)
        dispatchPushNotification(`Offer for ${monster.name} was deleted successfully`, NOTIFICATION_SUCCESS)
        if (requestUpdate) {
          requestUpdate()
        }
      }).catch((err: any) => {
        console.error(`Fail to delete offer for monster #${monster.id}`, err)
        dispatchPushNotification(`Fail to offer for ${monster.name}`, NOTIFICATION_ERROR)
      })
  }

  private requestClaimMonster = () => {
    const { scatter, offer, requestUpdate, dispatchPushNotification} = this.props
    const monster = offer.monster

    trxClaimPetMarket(scatter, monster.id, offer.user)
      .then((res:any) => {
        console.info(`Pet ${monster.id} was claimed successfully`, res)
        dispatchPushNotification(`Pet ${monster.name} was claimed successfully`, NOTIFICATION_SUCCESS)
        if (requestUpdate) {
          requestUpdate()
        }
      }).catch((err: any) => {
        console.error(`Fail to claim monster ${monster.id}`, err)
        dispatchPushNotification(`Fail to claim ${monster.name}`, NOTIFICATION_ERROR)
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
  dispatchPushNotification: pushNotification,
  dispatchDoLoadMyMonsters: doLoadMyMonsters
}

export default connect(mapStateToProps, mapDispatchToProps)(OfferCard)