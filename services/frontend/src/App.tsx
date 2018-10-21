import * as React from "react"
import { Switch, Route } from "react-router-dom"

import MobileHeader from "./modules/shared/MobileHeader"
import HomeScreen from "./modules/pages/HomeScreen"
import RankScreen from "./modules/ranking/RankScreen"
import AboutScreen from "./modules/pages/AboutScreen"
import FaqScreen from "./modules/pages/FaqScreen"

// import "bulma"
import "bulma/css/bulma.css"
import "./styles/index.css"
import Footer from "./modules/shared/Footer"
import ArenasScreen from "./modules/battles/ArenasScreen"
import BattleScreen from "./modules/battles/BattleScreen"
import MyMonstersScreen from "./modules/monsters/MyMonstersScreen"
import MarketScreen from "./modules/market/MarketScreen"
import MonsterDetailsScreen from "./modules/monsters/MonsterDetailsScreen"
import Toaster from "./modules/shared/Toaster"
import MyWalletScreen from "./modules/wallet/MyWalletScreen"
import { injectIntl, defineMessages } from "react-intl";
import krLocaleData from "react-intl/locale-data/kr";
import chLocaleData from "react-intl/locale-data/ch";

const messages = defineMessages({
  title: {
    id: "app.title",
    defaultMessage: "Welcome to React"
  },
  content1: {
    id: "app.content1",
    defaultMessage: "To get started, edit"
  },
  content2: {
    id: "app.content2",
    defaultMessage: "and save to reload."
  },
})

class App extends React.Component<{}, {}> {
  public render() {

    const {intl:{formatMessage}} = this.props;

    return (
      <Switch >
        <React.Fragment>
          <MobileHeader />
          <Toaster />
          <h1 className="App-title">{formatMessage(messages.title)}</h1>
          <Route path="/" exact component={HomeScreen} />
          <Route path="/arenas" exact component={ArenasScreen} />
          <Route path="/arenas/:host" exact component={BattleScreen} />
          <Route path="/my-monsters" exact component={MyMonstersScreen} />
          <Route path="/my-wallet" exact component={MyWalletScreen} />
          <Route path="/monster/:id" component={MonsterDetailsScreen} />
          <Route path="/market" component={MarketScreen} />
          <Route path="/rank/:type" component={RankScreen} />
          <Route path="/rank" exact component={RankScreen} />
          <Route path="/about" exact component={AboutScreen} />
          <Route path="/faq" exact component={FaqScreen} />
          <Footer />
        </React.Fragment>
      </Switch>
    )
  }
}

export default injectIntl(App);