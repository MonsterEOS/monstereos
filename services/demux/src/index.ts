import { BaseActionWatcher } from "demux"
import { MassiveActionHandler } from "demux-postgres"
import massive from "massive"
// import monitor from "pg-monitor"
import { MongoActionReader } from "./MongoActionReader"

import { effects } from "./effects"
import { updaters } from "./updaters"

console.info("==== Starting demux ====")

const INITIAL_BLOCK = Number(process.env.CHAIN_INIT_BLOCK || 100)

const MONGO_URI = process.env.MONGO_URI || "mongodb://127.0.0.1:5901"
const MONGO_DB = process.env.MONGO_DB || "EOSMN"

console.info("Initial Block to sync >>>> ", INITIAL_BLOCK)

const dbConfig = {
  user: process.env.DB_USER || "user",
  password: process.env.DB_PASSWORD || "pass",
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5932,
  database: process.env.DB_NAME || "monstereosio",
  schema: process.env.DB_SCHEMA || "pets",
}

console.info("DB Config >>>\n", dbConfig)

const init = async () => {

  const db = await massive(dbConfig)

  // monitor.attach(db.driverConfig)

  const actionHandler = new MassiveActionHandler(
    updaters,
    effects,
    db,
    dbConfig.schema,
  )

  // const actionReader = new NodeosActionReader(
  //   NODEOS,
  //   INITIAL_BLOCK,
  // )

  const inlineListeners = [
    "monstereosio::battleattack",
  ]

  const actionReader = new MongoActionReader(
    MONGO_URI,
    INITIAL_BLOCK,
    false,
    600,
    MONGO_DB,
    inlineListeners,
  )

  await actionReader.initialize()

  const actionWatcher = new BaseActionWatcher(
    actionReader,
    actionHandler,
    500,
  )

  actionWatcher.watch()

}

const exit = (e: any) => {
  console.error("An error has occured. error is: %s and stack trace is: %s", e, e.stack)
  console.error("Process will restart now.")
  process.exit(1)
}

process.on("unhandledRejection", exit)
process.on("uncaughtException", exit)
setTimeout(init, 2500)
