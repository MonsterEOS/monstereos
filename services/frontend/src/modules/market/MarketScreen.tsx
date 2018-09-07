import * as React from "react"
import { connect } from "react-redux"
import { State, doLoadOrders, doLoadMyMonsters } from "../../store"
import { getEosAccount } from "../../utils/scatter"
import { OrderProps } from "./market"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"
import OrderCard from "./OrderCard"
import NewOrderModal from "./NewOrderModal"

// Bid is Off for now due to monsters autocomplete.
// no way to select all monsters in memory? demux to the rescue
// import NewBidModal from "./NewBidModal"

interface Props {
  eosAccount: string,
  orders:OrderProps[],
  globalConfig: any,
  dispatchDoLoadOrders: any,
  dispatchDoLoadMyMonsters: any
}

interface ReactState {
  showNewOrderModal: boolean,
  showNewBidModal: boolean
}

class MarketScreen extends React.Component<Props, ReactState> {

  public state = {
    showNewOrderModal: false,
    showNewBidModal: false
  }

  public render() {

    const { eosAccount } = this.props

    if (eosAccount) {
      return this.renderMarket(eosAccount)
    } else {
      return <PageContainer>
          <div>Ooopss... looks like you are not identified</div>
        </PageContainer>
    }
  }

  private renderMarket(eosAccount: string) {

    const { orders, dispatchDoLoadOrders, dispatchDoLoadMyMonsters } = this.props
    // const { showNewOrderModal, showNewBidModal } = this.state
    const { showNewOrderModal } = this.state

    const subHeader = (<small className="is-hidden-mobile">
     {orders.length} orders
      </small>)

    const refetchOrders = () => {
      setTimeout(() => dispatchDoLoadOrders(), 500)
    }

    const refetchMonsters = () => {
      setTimeout(() => dispatchDoLoadMyMonsters(), 500)
    }

    const newOrderButton = (
      <a
        className="button is-success"
        onClick={() => this.setState({showNewOrderModal: true})}>
        New Order
      </a>
    )

    const newOrderClosure = (doRefetch: boolean) => {
      this.setState({showNewOrderModal: false})
      if (doRefetch) {
        refetchOrders()
      }
    }

    // const newBidButton = (
    //   <a
    //     className="button is-success"
    //     onClick={() => this.setState({showNewBidModal: true})}>
    //     New Bid
    //   </a>
    // )

    // const newBidClosure = (doRefetch: boolean) => {
    //   this.setState({showNewBidModal: false})
    //   if (doRefetch) {
    //     refetchOrders()
    //   }
    // }

    return (
      <PageContainer>
        <TitleBar
          title="Market for Monsters"
          notMobile
          menu={[subHeader, newOrderButton]} />
          <OrderList
            orders={orders}
            update={refetchMonsters} />
          {showNewOrderModal &&
          <NewOrderModal
            closeModal={newOrderClosure}
          />}
          {/* {showNewBidModal &&
          <NewBidModal
            closeModal={newBidClosure}
          />} */}
      </PageContainer>
    )
  }
}

const OrderList = ({ orders, update }: any) => (
  <div className="columns is-multiline">
    {orders.map((order: any) => (
      <OrderCard
        key={order.id}
        order={order}
        requestUpdate={update}/>
    ))}
  </div>
)

const isValidForUser = (user:string) => (order:OrderProps) => {
  return order.user === user || (order.monster.name.length > 0 &&
      (isValidOrder(order) || isValidBid(order)))
}

const isValidOrder = (order:OrderProps) => {
  return order.type in [1, 10, 11] && order.monster.owner === order.user
}

const isValidBid = (order:OrderProps) => {
  return order.type in [2, 12] && order.monster.owner !== order.user
}

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    orders: state.orders.filter(isValidForUser(eosAccount.name)),
    globalConfig: state.globalConfig,
  }
}

const mapDispatchToProps = {
  dispatchDoLoadOrders: doLoadOrders,
  dispatchDoLoadMyMonsters: doLoadMyMonsters,
}

export default connect(mapStateToProps, mapDispatchToProps)(MarketScreen)