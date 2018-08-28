import * as React from "react"
import { Switch, Route } from "react-router-dom"

import TopMenu from "./modules/shared/TopMenu"
import HomeScreen from "./modules/pages/HomeScreen"
import RankScreen from "./modules/ranking/RankScreen"
import AboutScreen from "./modules/pages/AboutScreen"
import FaqScreen from "./modules/pages/FaqScreen"

// import "bulma"
import "bulma/css/bulma.css"
import "./styles/index.css"
import Footer from "./modules/shared/Footer"
import ArenasScreen from "./modules/battles/ArenasScreen"
import MyMonstersScreen from "./modules/monsters/MyMonstersScreen"
import MonsterDetailsScreen from "./modules/monsters/MonsterDetailsScreen"

class App extends React.Component<{}, {}> {
  public render() {
    return (
      <Switch >
        <React.Fragment>
          <TopMenu />
          <Route path="/" exact component={HomeScreen} />
          <Route path="/arenas" exact component={ArenasScreen} />
          <Route path="/my-monsters" exact component={MyMonstersScreen} />
          <Route path="/monster/:id" component={MonsterDetailsScreen} />
          <Route path="/rank" exact component={RankScreen} />
          <Route path="/about" exact component={AboutScreen} />
          <Route path="/faq" exact component={FaqScreen} />
          <Footer />
        </React.Fragment>
      </Switch>
    )
  }
}

export default App