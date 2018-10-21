import * as React from "react"
import { connect } from "react-redux"
import { State, doLoadMyMonsters } from "../../store"
import { getEosAccount } from "../../utils/scatter"
import { OrderProps } from "./market"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"
import OrderCard from "./OrderCard"
import NewOrderModal from "./NewOrderModal"
import { loadOrders } from "../../utils/eos"

// Bid is Off for now due to monsters autocomplete.
// no way to select all monsters in memory? demux to the rescue
// import NewBidModal from "./NewBidModal"

interface Props {
  eosAccount: any,
  globalConfig: any,
  dispatchDoLoadMyMonsters: any,
}

interface ReactState {
  showNewOrderModal: boolean,
  showNewBidModal: boolean,
  ordersOffset: number,
  ordersLimit: number,
  orders:OrderProps[],
}

class MarketScreen extends React.Component<Props, ReactState> {

  public state = {
    showNewOrderModal: false,
    showNewBidModal: false,
    ordersOffset: 0,
    ordersLimit: 30,
    orders: [],
  }

  private refreshHandler: any = undefined

  public componentDidMount() {
    this.refresh()
  }

  public componentWillUnmount() {
    clearTimeout(this.refreshHandler)
  }

  public render() {

    const { dispatchDoLoadMyMonsters, eosAccount, globalConfig } = this.props
    const { showNewOrderModal, orders, ordersOffset, ordersLimit } = this.state

    const subHeader =
      <small>
        {orders.length} orders
      </small>

    const subHeaderFee =
      <small>
        Market Fees: {globalConfig.market_fee / 100}%
      </small>

    const refetchOrders = () => {
      setTimeout(() => this.refresh(), 500)
    }

    const refetchMonsters = () => {
      setTimeout(() => dispatchDoLoadMyMonsters() && this.refresh(), 500)
    }

    const newOrderButton = eosAccount && (
      <a
        className="button is-success is-large"
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
          title="Monsters Market"
          notMobile
          menu={[subHeader, subHeaderFee, newOrderButton]} />
          <OrderList
            orders={orders.slice(ordersOffset, ordersOffset + ordersLimit)}
            update={refetchMonsters} />
          {this.renderPagination(ordersOffset, ordersLimit, orders.length)}
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

  private renderPagination = (
    offset: number,
    limit: number,
    total: number) => {

    if (offset + limit < total || offset > 0) {
      return <div className="has-margin-bottom">
          <div className="is-pulled-right">
            {offset > 0 &&
              <a className="button has-margin-right"
                onClick={() => this.setState({ordersOffset: offset - limit})}>
                Back
              </a>}
            {offset + limit < total &&
              <a className="button"
                onClick={() => this.setState({ordersOffset: offset + limit})}>
                Next</a>
            }
          </div>
          <div style={{clear: "both"}} />
        </div>
    } else {
      return null
    }
  }

  private refresh = async () => {

    const { globalConfig, eosAccount } = this.props

    const orders = await loadOrders(globalConfig)

    const validOrders = orders.filter(isValidForUser(eosAccount.name))

    this.setState({orders: validOrders})

    // refresh orders each minute
    this.refreshHandler = setTimeout(this.refresh, 60 * 1000)
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
    globalConfig: state.globalConfig,
  }
}

const mapDispatchToProps = {
  dispatchDoLoadMyMonsters: doLoadMyMonsters,
}

export default connect(mapStateToProps, mapDispatchToProps)(MarketScreen)