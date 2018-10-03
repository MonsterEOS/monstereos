import {setNetwork} from "../../store"

export interface Network {
  id: string,
  name: string,
  protocol: string,
  host: string,
  port: number,
  ping: number
}

const DEFAULT_PING = 9999

export const loadNetwork = (store: any) => {

  const networkId = localStorage.getItem("myNetwork")

  if (networkId){
    store.dispatch(setNetwork(networkId))
  }

}

export const networks: Network[] = [
  {
    id: "cypherglasss",
    name: "Cypherglass",
    protocol: "https",
    host: "api.cypherglass.com",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eosdacserver",
    name: "eosDAC",
    protocol: "https",
    host: "eu.eosdac.io",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eoscafeblock",
    name: "EOS Cafe",
    protocol: "https",
    host: "mainnet.eoscalgary.io",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "cryptolions1",
    name: "Cryptolions",
    protocol: "https",
    host: "bp.cryptolions.io",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "zbeosbp11111",
    name: "Zb Eos",
    protocol: "https",
    host: "node1.zbeos.com",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "starteosiobp",
    name: "Starteos",
    protocol: "http",
    host: "api-mainnet.starteos.io",
    port: 80,
    ping: DEFAULT_PING
  },
  {
    id: "eosriobrazil",
    name: "EOS Rio",
    protocol: "https",
    host: "hapi.eosrio.io",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eos42freedom",
    name: "EOS42",
    protocol: "https",
    host: "nodes.eos42.io",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eosauthority",
    name: "EOS Authority",
    protocol: "https",
    host: "publicapi-mainnet.eosauthority.com",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "teamgreymass",
    name: "Greymass",
    protocol: "https",
    host: "eos.greymass.com",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "atticlabeosb",
    name: "AtticLab",
    protocol: "https",
    host: "eosbp.atticlab.net",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eoscanadacom",
    name: "EOS Canada",
    protocol: "https",
    host: "mainnet.eoscanada.com",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eospaceioeos",
    name: "EOSpace",
    protocol: "https",
    host: "api.eossweden.se",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "eosswedenorg",
    name: "EOS Sw/eden",
    protocol: "https",
    host: "api.eossweden.se",
    port: 443,
    ping: DEFAULT_PING
  },
  // {
  //   id: "eosnewyorkio",
  //   name: "EOS New York",
  //   protocol: "https",
  //   host: "api.eosnewyork.io",
  //   port: 443,
  //   ping: DEFAULT_PING
  // },
  {
    id: "aus1genereos",
    name: "Genereos",
    protocol: "https",
    host: "mainnet.genereos.io",
    port: 443,
    ping: DEFAULT_PING
  },
  {
    id: "scatter",
    name: "Scatter Balancer",
    protocol: "https",
    host: "nodes.get-scatter.com",
    port: 443,
    ping: DEFAULT_PING
  },


]



