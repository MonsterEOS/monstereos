import express from "express"
// import { makeExtendSchemaPlugin, gql } from "graphile-utils"
import { postgraphile } from "postgraphile"

const app = express()

const dbConfig = {
  user: process.env.DB_USER || "user",
  password: process.env.DB_PASSWORD || "pass",
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5432,
  database: process.env.DB_NAME || "monstereosio",
  schema: process.env.DB_SCHEMA || "pets",
}

app.use(
  postgraphile(
    `postgres://${dbConfig.user}:${dbConfig.password}@${dbConfig.host}:${dbConfig.port}/${dbConfig.database}`,
    [dbConfig.schema],
    {
      graphiql: true,
      disableDefaultMutations: true,
    },
  ),
)

app.listen(3030)
