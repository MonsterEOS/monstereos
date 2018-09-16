import * as React from "react"
import { connect } from "react-redux"
import { State, doLoadMyWallet } from "../../store"
import { getEosAccount } from "../../utils/scatter"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"

interface Props {
  eosAccount: string,
  myWalletBalance: string,
  globalConfig: any,
  dispatchDoLoadMyWallet: any
}

interface ReactState {
  showNewMonsterModal: boolean
}

class MyWalletScreen extends React.Component<Props, ReactState> {

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
      return <PageContainer>
          <div>Ooopss... looks like you are not identified</div>
        </PageContainer>
    }
  }

  private renderWallet() {

    const { myWalletBalance } = this.props

    return (
      <PageContainer>
        <TitleBar
          title="My Monsters Wallet" />
        <p>Your current balance is {myWalletBalance}.</p>
        <p className="has-text-info">
          We are working to have a nice economic flow for in-app purchases, never ever being a PAY-TO-WIN scheme. Please stay tuned in our Telegram to watch the news!
        </p>
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
  dispatchDoLoadMyWallet: doLoadMyWallet
}

export default connect(mapStateToProps, mapDispatchToProps)(MyWalletScreen)