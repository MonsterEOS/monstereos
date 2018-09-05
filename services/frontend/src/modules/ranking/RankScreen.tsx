import * as React from "react"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import EldestRank from "../ranking/EldestRank"
import GraveyardRank from "../ranking/GraveyardRank"

const RANK_ELDEST = 0
const RANK_ACTIVITY = 1
const RANK_COLLECTORS = 2
const RANK_WINNER_MONSTERS = 3
const RANK_WINNER_PLAYERS = 4
const RANK_GRAVEYARD = 5

interface ReactState {
  rank: number
}

class RankScreen extends React.Component<{}, ReactState> {

  public state = {
    rank: RANK_ELDEST
  }

  public render() {
    return (
      <PageContainer>
        {this.renderMenu()}
        {this.renderRankPage()}
      </PageContainer>
    )
  }

  private renderMenu = () => {

    const { rank } = this.state

    return (
      <div className="rank">
        <div className="tabs">
          <ul>
            <li className={rank === RANK_ELDEST ? "is-active" : ""}>
              <Link to="/rank">Eldest Monsters</Link>
            </li>
            <li className={rank === RANK_ACTIVITY ? "is-active" : ""}>
              <Link to="/rank">Top Activity</Link>
            </li>
            <li className={rank === RANK_COLLECTORS ? "is-active" : ""}>
              <Link to="/rank">Top Collectors</Link>
            </li>
            <li className={rank === RANK_WINNER_MONSTERS ? "is-active" : ""}>
              <Link to="/rank">Top Battle Monsters</Link>
            </li>
            <li className={rank === RANK_WINNER_PLAYERS ? "is-active" : ""}>
              <Link to="/rank">Top Battle Players</Link>
            </li>
            <li className={rank === RANK_GRAVEYARD ? "is-active" : ""}>
              <Link to="/rank/graveyard">Graveyard</Link>
            </li>
          </ul>
        </div>
      </div>
    )
  }

  private renderRankPage = () => {
    const { rank } = this.state

    switch(rank) {
      case RANK_GRAVEYARD:
        return <GraveyardRank />
      default:
        return <EldestRank />
    }
  }

}

export default RankScreen