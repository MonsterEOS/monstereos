import * as React from "react"
import * as ReactDOM from "react-dom"
import { BrowserRouter } from "react-router-dom"
import { ApolloClient } from "apollo-client"
import { HttpLink } from "apollo-link-http"
import { InMemoryCache } from "apollo-cache-inmemory"
import { ApolloProvider } from "react-apollo"

import "./api/scatter"
import App from "./App"
import registerServiceWorker from "./registerServiceWorker"

const httpLink = new HttpLink({
  uri: process.env.GRAPHQL_ENDPOINT || "http://localhost:3030/graphql",
})

const client = new ApolloClient({
  link: httpLink,
  cache: new InMemoryCache(),
})

ReactDOM.render(
  <ApolloProvider client={client}>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </ApolloProvider>,
  document.getElementById("root") as HTMLElement
)
registerServiceWorker()
