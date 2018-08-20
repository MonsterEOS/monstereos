import * as React from "react"
import { Switch, Route } from "react-router-dom"
import HomeScreen from "./modules/HomeScreen"

// import "./modules/core/styles/core.css"

class App extends React.Component<{}, {}> {
  public render() {
    return (
      <Switch>
        <Route path="/" exact component={HomeScreen} />
      </Switch>
    )
  }
}

export default App