import * as React from "react"
import { Arena } from "./battles"

interface Props {
  arena: Arena
}

const ArenaCard = ({arena}: Props) => (
  <div className="card">
    <header className="card-header">
      <p className="card-header-title">{arena.host}'s Arena</p>
    </header>
    <div className="card-content">
      <div className="content">
        <nav className="level">
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Start Time</p>
              <p className="title">{arena.startedAt}</p>
            </div>
          </div>
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Last Turn</p>
              <p className="title">{arena.lastMoveAt}</p>
            </div>
          </div>
          <div className="level-item has-text-centered">
            <div>
              <p className="heading">Mode</p>
              <p className="title">{arena.mode}</p>
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
        <a className="card-footer-item">Full, you can Watch</a>
        <a className="card-footer-item">Watch</a>
      </footer>
    </div>
)

export default ArenaCard