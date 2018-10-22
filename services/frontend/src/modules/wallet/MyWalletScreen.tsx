import * as React from "react"
import { connect } from "react-redux"
import { State, doLoadMyWallet, doLogout } from "../../store"
import { getEosAccount } from "../../utils/scatter"

import PageContainer from "../shared/PageContainer"
import NetworkModal from "./NetworkModal"

interface Props {
  eosAccount: string
  myWalletBalance: string
  globalConfig: any
  dispatchDoLoadMyWallet: any
  dispatchDoLogout: any
  history: any
}

interface ReactState {
  showNewMonsterModal: boolean
  showSetNetworkModal: boolean
}

class MyWalletScreen extends React.Component<Props, ReactState> {
  public state = {
    showNewMonsterModal: false,
    showSetNetworkModal: false,
  }

  private refreshHandler: any = undefined

  public componentDidMount() {
    this.refresh()
  }

  public componentWillUnmount() {
    clearTimeout(this.refreshHandler)
  }

  public render() {
    const { eosAccount } = this.props

    if (eosAccount) {
      return this.renderWallet()
    } else {
      return (
        <PageContainer>
          <div>Ooopss... looks like you are not identified</div>
        </PageContainer>
      )
    }
  }

  private renderWallet() {
    const { myWalletBalance, dispatchDoLogout, history } = this.props

    const { showSetNetworkModal } = this.state

    const setNetworkClosure = () => {
      this.setState({ showSetNetworkModal: false })
    }

    return (
      <PageContainer>
        <div className="columns">
          <div className="column">
            <h2>My Wallet</h2>
            <p>Your current in-app balance is {myWalletBalance}.</p>
            <p className="has-text-info">
              We are working to have a nice economic flow for in-app purchases,
              never ever being a PAY-TO-WIN scheme. Please stay tuned in our{" "}
              <a href="https://discord.gg/gmrDtHF" target="_blank">
                <i className="fa fa-discord" /> Discord
              </a>{" "}
              to watch the news! Or...
            </p>

            <h3>MonsterEOS Tees</h3>

            <p className="has-text-centered">
              If you really want to support us, buy our beautiful shirt and use
              it! Part of the funds go to our project, plus you will be helping
              us advertise just by wearing it! We also plan to put up a photos
              board of players wearing their MonsterEOS shirts.
            </p>

            <p className="has-text-centered">
              <strong>Are you going to miss out on that?</strong>
            </p>
          </div>

          <div className="column">
            <p className="has-text-centered">
              <a
                href="https://largeseafaringmammal.com/products/monstereos-x-lsm"
                target="_blank"
              >
                <img
                  src="/images/monster-eos-shirts.png"
                  height="360"
                  alt="MonsterEOS T-Shirts"
                />
              </a>
            </p>

            <p className="has-text-centered">
              <a
                style={{ minHeight: "5em" }}
                target="_blank"
                href="https://largeseafaringmammal.com/products/monstereos-x-lsm"
                className="button is-large is-success"
              >
                I want to Support the
                <br />
                Project! Get my
                <br />
                MonsterEOS T-Shirt!
              </a>
            </p>
          </div>
        </div>

        <p className="has-text-centered has-margin-top">
          <a
            className="button has-margin-top"
            onClick={() => this.setState({ showSetNetworkModal: true })}
          >
            SET NETWORK
          </a>
        </p>
        <p className="has-text-centered has-margin-top">
          <a
            className="button is-danger has-margin-top"
            onClick={() => dispatchDoLogout() && history.push("/")}
          >
            LOGOUT
          </a>
        </p>
        {showSetNetworkModal && <NetworkModal closeModal={setNetworkClosure} />}
      </PageContainer>
    )
  }

  private refresh = async () => {
    const { dispatchDoLoadMyWallet } = this.props

    dispatchDoLoadMyWallet()

    // refresh wallet each minute
    this.refreshHandler = setTimeout(this.refresh, 60 * 1000)
  }
}

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    myWalletBalance: state.myWalletBalance,
    globalConfig: state.globalConfig,
  }
}

const mapDispatchToProps = {
  dispatchDoLoadMyWallet: doLoadMyWallet,
  dispatchDoLogout: doLogout,
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(MyWalletScreen)
