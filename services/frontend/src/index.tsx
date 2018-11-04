import * as React from "react"
import * as ReactDOM from "react-dom"
import { Provider } from "react-redux"
import { BrowserRouter } from "react-router-dom"
import { ApolloClient } from "apollo-client"
import { HttpLink } from "apollo-link-http"
import { InMemoryCache } from "apollo-cache-inmemory"
import { ApolloProvider } from "react-apollo"

import store from "./store"
import loadScatter from "./utils/scatter"
import App from "./App"
import registerServiceWorker from "./registerServiceWorker"
import { loadGlobalConfig } from "./utils/eos"
import {loadNetwork} from "./modules/wallet/networks"
import {loadLanguage} from "./language";

const httpLink = new HttpLink({
  uri: process.env.REACT_APP_GRAPHQL_ENDPOINT || "http://localhost:3030/graphql",
})

const client = new ApolloClient({
  link: httpLink,
  cache: new InMemoryCache(),
})

ReactDOM.render(
  <ApolloProvider client={client}>
    <Provider store={store}>
      <BrowserRouter>
        <App />
      </BrowserRouter>
    </Provider>
  </ApolloProvider>,
  document.getElementById("root") as HTMLElement
)

// some global inits
loadScatter(store)
loadNetwork(store)
loadGlobalConfig(store)
loadLanguage(store)

// service worker
registerServiceWorker()