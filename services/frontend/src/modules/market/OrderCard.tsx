import * as React from "react"
import * as moment from "moment"
import { OrderProps, amountOfAsset, amountOfAssetPlusFees } from "./market"
import { monsterImageSrc } from "../monsters/monsters"
import {
  State,
  GlobalConfig,
  NOTIFICATION_SUCCESS,
  pushNotification,
  NOTIFICATION_ERROR,
  doLoadMyMonsters,
} from "../../store"
import { connect } from "react-redux"
import { getEosAccount } from "../../utils/scatter"
import {
  trxClaimPetMarket,
  trxRemoveOrderMarket,
  MONSTERS_ACCOUNT,
  trxTokenTransfer,
} from "../../utils/eos"
import { Link } from "react-router-dom"

import NewOrderModal from "./NewOrderModal"

interface Props {
  order: OrderProps
  eosAccount: string
  globalConfig: GlobalConfig
  requestUpdate?: any
  dispatchPushNotification: any
  dispatchDoLoadMyMonsters: any
  scatter: any
  selected?: boolean
  hideLink?: boolean
  hideActions?: boolean
  hideProfile?: boolean
  customActions?: MonsterAction[]
}

export interface MonsterAction {
  label: string
  action: any
}

interface ReactState {
  showNewOrderModal: boolean
}

class OrderCard extends React.Component<Props, ReactState> {
  public state = {
    showNewOrderModal: false,
  }

  public render() {
    const {
      order,
      selected,
      dispatchDoLoadMyMonsters,
      requestUpdate,
      hideProfile,
    } = this.props
    const monster = order.monster

    const { showNewOrderModal } = this.state

    const selectedClass = selected ? "monster-selected" : ""

    const refetchMonstersAndOrders = () => {
      setTimeout(() => dispatchDoLoadMyMonsters(), 500)
    }

    const newOrderClosure = (doRefetch: boolean) => {
      this.setState({ showNewOrderModal: false })
      if (doRefetch) {
        refetchMonstersAndOrders()

        if (requestUpdate) {
          requestUpdate()
        }
      }
    }

    return (
      <div className="column is-one-third">
        <div className={`card monster-card ${selectedClass}`}>
          <div className="card-content">
            <div className="columns is-mobile">
              {!hideProfile && (
                <div className="column">{this.renderMonster()}</div>
              )}
              <div className={`column ${hideProfile ? "" : "is-three-fifths"}`}>
                {this.renderHeader()}
                {this.renderOrderData()}
              </div>
            </div>
          </div>
          {this.renderFooter()}
        </div>
        {showNewOrderModal && (
          <NewOrderModal
            closeModal={newOrderClosure}
            initialMonster={monster}
            initialName={order.newOwner}
            initialAmount={amountOfAsset(order.value)}
          />
        )}
      </div>
    )
  }

  private renderMonster() {
    const { order } = this.props
    const monster = order.monster

    const figureClass = `image monster-image ${
      monster.deathAt ? "grayscale" : ""
    }`
    const monsterImage = monsterImageSrc(monster.type)

    return (
      <div className="card-image">
        <figure className={figureClass}>
          <img alt={monster.name} src={monsterImage} />
        </figure>
      </div>
    )
  }

  private renderHeader() {
    const { order, hideLink, hideProfile } = this.props
    const monster = order.monster

    // const createdAt = moment(monster.createdAt)
    // const createdAtText = createdAt.format("MMMM, D YYYY @ h:mm a")
    // const createdAtIso = createdAt.toLocaleString()

    // const deathAt = moment(monster.deathAt)
    // const deathAtText = deathAt.format("MMMM, D YYYY @ h:mm a")
    // const deathAtIso = deathAt.toLocaleString()

    const aliveDuration =
      (monster.deathAt ? monster.deathAt : Date.now()) - monster.createdAt
    const aliveDurationText = moment.duration(aliveDuration).humanize()

    const headerContent = !hideProfile && (
      <div className={`monster-card-title ${monster.deathAt ? "dead" : ""}`}>
        <div>
          <div className="monster-name">{monster.name}</div>
          <div className="monster-status">
            {monster.deathAt ? (
              <p>Stayed alive for {aliveDurationText}</p>
            ) : (
              <p>Has been alive for {aliveDurationText}</p>
            )}
          </div>
        </div>
        <div className="monster-id">#{monster.id}</div>
        <br />
      </div>
    )

    return (
      <div className="monster-card-header">
        <span>Order #{order.id}</span>
        <br />
        {!hideLink ? (
          <Link to={`/monster/${monster.id}`} className="monster-header-link">
            {headerContent}
          </Link>
        ) : (
          headerContent
        )}
      </div>
    )
  }

  private renderFooter() {
    const { order, customActions, eosAccount, globalConfig } = this.props

    let actions: MonsterAction[] = []

    const isReal = order.monster.name.length > 0 // not deleted

    if (order.user === eosAccount) {
      if (isReal) {
        actions.push({ action: this.requestUpdateOrder, label: "Update Order" })
      }
      actions.push({ action: this.requestDeleteOrder, label: "Delete Order" })
    }
    if (
      eosAccount &&
      (!order.newOwner || order.newOwner === eosAccount) &&
      order.user !== eosAccount &&
      isReal
    ) {
      const amount = amountOfAssetPlusFees(order.value, globalConfig.market_fee)
      actions.push({
        action: this.requestClaimMonster,
        label:
          amount > 0
            ? `Buy for ${amount.toLocaleString()} EOS`
            : `Claim for FREE`,
      })
    }

    if (customActions) {
      actions = actions.concat(customActions)
    }

    return (
      <footer className="card-footer">
        {actions.map((action, index) => (
          <a key={index} className="card-footer-item" onClick={action.action}>
            {action.label}
          </a>
        ))}
      </footer>
    )
  }

  private renderOrderData = () => {
    const { order, globalConfig } = this.props
    const { monster } = order

    const transferEnds = moment(order.transferEndsAt)
    const transferEndsText = transferEnds.format("MMMM, D YYYY @ h:mm a")
    const transferEndsIso = transferEnds.toLocaleString()

    const amount = amountOfAsset(order.value)
    const fees = ((amount * globalConfig.market_fee) / 10000).toLocaleString(
      undefined,
      { minimumFractionDigits: 2, maximumFractionDigits: 2 },
    )

    const priceTxt =
      amount >= 1000000
        ? amount.toLocaleString()
        : amount.toLocaleString(undefined, {
            minimumFractionDigits: 2,
            maximumFractionDigits: 2,
          })

    return (
      <div className="card-content">
        <span className="is-6">current owner {monster.owner}</span>
        <div className="is-6">order by {order.user}</div>
        {order.newOwner && (
          <div className="is-6">ordered to {order.newOwner}</div>
        )}
        {order.transferEndsAt > 0 && (
          <div className="is-6">
            <time dateTime={transferEndsIso}>
              re-transferable from {transferEndsText}
            </time>
          </div>
        )}
        {amount > 0 && (
          <div className="is-6 price">
            <hr />
            Price: {priceTxt} EOS
            <br />
            Fees: {fees} EOS
          </div>
        )}
      </div>
    )
  }

  private requestUpdateOrder = () => {
    this.setState({ showNewOrderModal: true })
  }

  private requestDeleteOrder = () => {
    const {
      scatter,
      order,
      requestUpdate,
      dispatchPushNotification,
    } = this.props
    const monster = order.monster

    trxRemoveOrderMarket(scatter, monster.id)
      .then((res: any) => {
        console.info(
          `Order for monster #${monster.id} was deleted successfully`,
          res,
        )
        dispatchPushNotification(
          `Order for ${monster.name} was deleted successfully`,
          NOTIFICATION_SUCCESS,
        )
        if (requestUpdate) {
          requestUpdate()
        }
      })
      .catch((err: any) => {
        dispatchPushNotification(
          `Fail to order for ${monster.name} ${err.eosError}`,
          NOTIFICATION_ERROR,
        )
      })
  }

  private requestClaimMonster = () => {
    const {
      scatter,
      order,
      requestUpdate,
      dispatchPushNotification,
      globalConfig,
    } = this.props
    const monster = order.monster

    const amount = amountOfAssetPlusFees(order.value, globalConfig.market_fee)

    if (amount > 0) {
      const orderAmount = `${amount.toFixed(4)} EOS`

      trxTokenTransfer(scatter, MONSTERS_ACCOUNT, orderAmount, "mtt" + order.id)
        .then((res: any) => {
          console.info(`Pet ${monster.id} was claimed successfully`, res)
          dispatchPushNotification(
            `Pet ${monster.name} was claimed successfully`,
            NOTIFICATION_SUCCESS,
          )
          if (requestUpdate) {
            requestUpdate()
          }
        })
        .catch((err: any) => {
          dispatchPushNotification(
            `Fail to claim ${monster.name} ${err.eosError}`,
            NOTIFICATION_ERROR,
          )
        })
    } else {
      trxClaimPetMarket(scatter, monster.id, order.user)
        .then((res: any) => {
          console.info(`Pet ${monster.id} was claimed successfully`, res)
          dispatchPushNotification(
            `Pet ${monster.name} was claimed successfully`,
            NOTIFICATION_SUCCESS,
          )
          if (requestUpdate) {
            requestUpdate()
          }
        })
        .catch((err: any) => {
          dispatchPushNotification(
            `Fail to claim ${monster.name} ${err.eosError}`,
            NOTIFICATION_ERROR,
          )
        })
    }
  }
}

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    globalConfig: state.globalConfig,
    scatter: state.scatter,
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification,
  dispatchDoLoadMyMonsters: doLoadMyMonsters,
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(OrderCard)
