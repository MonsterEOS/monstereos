import * as React from "react"
import {
  withRouter, RouteComponentProps, Link
} from "react-router-dom"
import { connect } from "react-redux"
import { State, doLogout, requestScatterIdentity } from "../../store"
import { getEosAccount } from "../../utils/scatter"

import eosIcon from "../../assets/images/layout/eos-coin-icon.png"
import navBattleIcon from "../../assets/images/layout/nav-battle-icon.png"
import navMarketIcon from "../../assets/images/layout/nav-market-icon.png"
import navInfoIcon from "../../assets/images/layout/nav-info-icon.png"
import navMonsterIcon from "../../assets/images/layout/nav-monster-icon.png"
import navRankIcon from "../../assets/images/layout/nav-rank-icon.png"

interface Props extends RouteComponentProps<Props> {
  scatter: any,
  identity: any,
  dispatchDoLogout: any,
  dispatchRequestScatterIdentity: any,
  myWalletBalance: string,
}

interface ReactState {
  activeMenu: boolean
}

class MobileHeader extends React.Component<Props, ReactState> {
  public state: ReactState = { activeMenu: false }

  public render() {

    const { identity, myWalletBalance, history } = this.props

    const eosAccount = getEosAccount(identity)

    return (
      <React.Fragment>
      <nav className="navbar-mobile">
        <div className="navbar-brand">
          <img alt="MonsterEOS" src="/images/ui/logo-small.png" />
        </div>
        { eosAccount ?
        <div 
          className="navbar-profile-button" 
          onClick={() => history.push(`/my-wallet`)}>
          <div className="navbar-profile-data">
            <div className="navbar-profile-account">{eosAccount || "loading..."}</div>
            <div className="navbar-profile-amount">{myWalletBalance}</div>
          </div>
          <div  className="navbar-profile-coin">
            <img src={eosIcon} />
          </div>
        </div>
        : 
        <div className="navbar-signin-button">
          <a className="button" onClick={this.doSignIn}>
          SIGN IN
          </a>
        </div>
        } 
      </nav>
      { eosAccount && 
      <div className="mobile-controls">
        <hr/>
        <div className="mobile-controls-buttons">
          <Link to="/my-monsters">
            <img src={navMonsterIcon} />
          </Link>
          <div className="vertical-separator" />
          <Link to="/market">
            <img src={navMarketIcon} />
          </Link>
          <div className="vertical-separator" />
          <Link to="/arenas">
            <img src={navBattleIcon} />
          </Link>
          <div className="vertical-separator" />
          <Link to="/rank">
            <img src={navRankIcon} />
          </Link>
          <div className="vertical-separator" />
          <Link to="/about">
            <img src={navInfoIcon} />
          </Link>
        </div>
      </div>}
      </React.Fragment>
    )
  }

  private doSignIn = async () => {
    const { history, dispatchRequestScatterIdentity } = this.props
    const res = await dispatchRequestScatterIdentity()
    if (res) {
      history.push("/my-monsters")
    }
  }
}

const mapStateToProps = (state: State) => ({
  scatter: state.scatter,
  identity: state.identity,
  myWalletBalance: state.myWalletBalance,
})

const mapDispatchToProps = {
  dispatchDoLogout: doLogout,
  dispatchRequestScatterIdentity: requestScatterIdentity
}

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(MobileHeader))