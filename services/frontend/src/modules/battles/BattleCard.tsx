import * as React from "react"
import { Arena } from "./battles"
import { Link } from "react-router-dom"
import * as moment from "moment"

interface Props {
  arena: Arena,
  myBattle: boolean,
  availableToBattle: boolean,
  joinBattle: any
}

const parseMode = (mode: number) => {
  return mode === 1 ? "1v1" :
    mode === 3 ? "3v3" :
    "N/A"
}

const parseTime = (time: number) => {
  return moment.duration(Date.now() - time).humanize()
}

const BattleCard = ({arena, myBattle, joinBattle, availableToBattle}: Props) => (
  <div className="arena card has-margin-top">
    <header className="card-header">
      <p className="card-header-title">{arena.host}'s Arena</p>
    </header>
    <div className="card-content">
      <div className="content">
        <nav className="level">
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Start Time</p>
              <p className="title">{arena.startedAt ? parseTime(arena.startedAt): "Pending"}</p>
            </div>
          </div>
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Last Turn</p>
              <p className="title">{arena.startedAt ? parseTime(arena.startedAt): "N/A"}</p>
            </div>
          </div>
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Mode</p>
              <p className="title">{parseMode(arena.mode)}</p>
            </div>
          </div>
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Monsters Alive</p>
              <p className="title">{arena.petsStats.length}</p>
            </div>
          </div>
        </nav>
      </div>
      </div>
      <footer className="card-footer">
        <Link
          className="card-footer-item"
          to={`/arenas/${arena.host}`}>
          {myBattle ? "Reconnect to Battle" : "Watch"}
        </Link>
        {/* { arena.commits.length < 2 && availableToBattle &&
          <a className="card-footer-item" onClick={joinBattle}>Join Battle</a>
        } */}
      </footer>
    </div>
)

export default BattleCard