import * as React from "react"
import { Link } from "react-router-dom"

// const SCATTER_EXTENSION_LINK = "https://chrome.google.com/webstore/detail/scatter/ammjpmhgckkpcamddpolhchgomcojkle"

interface State {
  eosAccount: string
}

class TopMenu extends React.Component<{}, State> {
  public state: State = { eosAccount: "" }

  public render() {
    const { eosAccount } = this.state

    return (
      <nav className="navbar">
        <div className="navbar-brand logo">
          MonsterEOS
        </div>
        <div className="navbar-menu is-active">
          <div className="navbar-end">
            {this.greetings(eosAccount)}
            {!eosAccount && this.homeButton()}
            {!eosAccount && this.scatterButton()}
            {eosAccount && this.myWalletButton()}
            {eosAccount && this.myMonstersButton()}
            {this.rankButton()}
            {this.aboutButton()}
            {eosAccount && this.logoutButton()}
            {this.helpButton()}
          </div>
        </div>
      </nav>
    )
  }

  private greetings(eosAccount: string) {
    return eosAccount &&
      <p>
        Hello {eosAccount}!
      </p>
  }

  private helpButton() {
    return (
      <Link className="navbar-item help-button" to="/faq">
        <span className="navbar-item icon is-small">
          <i className="fa fa-2x fa-question-circle has-text-info" />
        </span>
      </Link>
    )
  }

  private homeButton() {
    return (
      <Link className="navbar-item" to="/">
        Home
      </Link>
    )
  }

  private myMonstersButton() {
    return (
      <Link className="navbar-item" to="my-monsters">
        <i className="fa fa-paw" />
        My Monsters
      </Link>
    )
  }

  private myWalletButton() {
    return (
      <div className="navbar-item">
        <div className="field is-grouped">
          <p className="control">
            <Link className="button is-primary" to="/my-wallet">
              <span className="icon"><i className="fa fa-suitcase" /></span>
              <span>0 EOS</span>
            </Link>
          </p>
        </div>
      </div>
    )
  }

  private rankButton() {
    return (
      <Link className="navbar-item" to="/rank">
        <i className="fa fa-trophy" />
        Rank
      </Link>
    )
  }

  private logoutButton() {
    return (
      <a className="navbar-item">
        <i className="fa fa-sign-out" />
        Logout
      </a>
    )
  }

  private aboutButton() {
    return (
      <Link className="navbar-item" to="/about">
        About
      </Link>
    )
  }

  private scatterButton() {
    return (
      <a className="navbar-item">
        Enter with Scatter
      </a>
    )
  }

  // private scatterButtonInstalled() {
  //   return (
  //     <a className="navbar-item">
  //       Refresh page after Scatter Installation
  //     </a>
  //   )
  // }

  // private scatterButtonInstall() {
  //   return (
  //     <a className="navbar-item" href={SCATTER_EXTENSION_LINK} target="_blank">
  //       Install Scatter Wallet
  //     </a>
  //   )
  // }
}

export default TopMenu