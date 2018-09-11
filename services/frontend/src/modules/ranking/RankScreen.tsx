import * as React from "react"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import EldestRank from "../ranking/EldestRank"
import GraveyardRank from "../ranking/GraveyardRank"
import TopActivityRank from "./TopActivityRank"
import TopBattleMonstersRank from "./TopBattleMonstersRank"
import TopBattlePlayersRank from "./TopBattlePlayersRank"
import TopCollectorsRank from "./TopCollectorsRank"

const RANK_ELDEST = "eldest"
const RANK_ACTIVITY = "activity"
const RANK_COLLECTORS = "collectors"
const RANK_WINNER_MONSTERS = "battle-monsters"
const RANK_WINNER_PLAYERS = "battle-players"
const RANK_GRAVEYARD = "graveyard"

interface Props {
  match: any,
}

class RankScreen extends React.Component<Props, {}> {

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

    const { match: {params: { type } } } = this.props

    return (
      <div className="rank">
        <div className="tabs">
          <ul>
            <li className={type === RANK_ELDEST || !type ? "is-active" : ""}>
              <Link to="/rank">Eldest Monsters</Link>
            </li>
            <li className={type === RANK_ACTIVITY ? "is-active" : ""}>
              <Link to="/rank/activity">Top Activity</Link>
            </li>
            <li className={type === RANK_COLLECTORS ? "is-active" : ""}>
              <Link to="/rank/collectors">Top Collectors</Link>
            </li>
            <li className={type === RANK_WINNER_MONSTERS ? "is-active" : ""}>
              <Link to="/rank/battle-monsters">Top Battle Monsters</Link>
            </li>
            <li className={type === RANK_WINNER_PLAYERS ? "is-active" : ""}>
              <Link to="/rank/battle-players">Top Battle Players</Link>
            </li>
            <li className={type === RANK_GRAVEYARD ? "is-active" : ""}>
              <Link to="/rank/graveyard">Graveyard</Link>
            </li>
          </ul>
        </div>
      </div>
    )
  }

  private renderRankPage = () => {
    const { match: {params: { type } } } = this.props

    switch(type) {
      case RANK_ACTIVITY:
        return <TopActivityRank />
      case RANK_WINNER_MONSTERS:
        return <TopBattleMonstersRank />
      case RANK_WINNER_PLAYERS:
        return <TopBattlePlayersRank />
      case RANK_COLLECTORS:
        return <TopCollectorsRank />
      case RANK_GRAVEYARD:
        return <GraveyardRank />
      default:
        return <EldestRank />
    }
  }

}

export default RankScreen