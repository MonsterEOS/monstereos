import { MassiveActionHandler } from "demux-postgres"
import { readers, watchers } from "demux-js"
import massive from "massive"
import { effects } from "./effects"
import { updaters } from "./updaters"


const NODEOS = process.env.CHAIN_HOST
const INITIAL_BLOCK = process.env.CHAIN_INIT_BLOCK

console.info("Reading from node >>>> ", NODEOS)
console.info("Initial Block to sync >>>> ", INITIAL_BLOCK)

const dbConfig = {
  user: process.env.DB_USER || "",
  password: process.env.DB_PASSWORD || "",
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5432,
  database: process.env.DB_NAME || "",
  schema: process.env.DB_SCHEMA || "",
}

const { eos: { NodeosActionReader } } = readers
const { BaseActionWatcher } = watchers

massive(dbConfig).then((db: any) => {
  const actionHandler = new MassiveActionHandler(updaters, effects, db)
  const actionReader = new NodeosActionReader(NODEOS, INITIAL_BLOCK)
  const actionWatcher = new BaseActionWatcher(actionReader, actionHandler, 500)

  actionWatcher.watch()
})