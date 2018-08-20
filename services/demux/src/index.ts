import { BaseActionWatcher } from "demux"
import { NodeosActionReader } from "demux-eos"
import { MassiveActionHandler } from "demux-postgres"
import massive from "massive"
import { effects } from "./effects"
import { updaters } from "./updaters"

console.info("==== Starting demux ====")

const NODEOS = process.env.CHAIN_HOST || "http://localhost:8830"
const INITIAL_BLOCK = Number(process.env.CHAIN_INIT_BLOCK || 100)

console.info("Reading from node >>>> ", NODEOS)
console.info("Initial Block to sync >>>> ", INITIAL_BLOCK)

const dbConfig = {
  user: process.env.DB_USER || "user",
  password: process.env.DB_PASSWORD || "pass",
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5432,
  database: process.env.DB_NAME || "monstereosio",
  schema: process.env.DB_SCHEMA || "pets",
}

console.info("DB Config >>>\n", dbConfig)

const init = async () => {

  const db = await massive(dbConfig)

  const actionHandler = new MassiveActionHandler(
    updaters,
    effects,
    db,
    dbConfig.schema,
  )

  const actionReader = new NodeosActionReader(
    NODEOS,
    INITIAL_BLOCK,
  )

  const actionWatcher = new BaseActionWatcher(
    actionReader,
    actionHandler,
    500,
  )

  actionWatcher.watch()

}

init()
