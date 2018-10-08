import * as React from "react"
// import { Link } from "react-router-dom"

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
  history: any
}

class RankScreen extends React.Component<Props, {}> {

  public state = {
    rank: RANK_ELDEST
  }

  public render() {
    return (
      <PageContainer>
        <h1 className="title rank">Top Rank</h1>
        {this.renderMenu()}
        {this.renderRankPage()}
      </PageContainer>
    )
  }

  private renderMenu = () => {

    const { match: {params: { type } } } = this.props

    const currentType = type || RANK_ELDEST

    return (
      <div className="field" onChange={this.handleChangeRank}>
        <div className="control">
          <div className="select is-fullwidth">
            <select value={currentType}>
              <option value={RANK_ELDEST}>Eldest Monsters</option>
              <option value={RANK_ACTIVITY}>Top Activity</option>
              <option value={RANK_COLLECTORS}>Top Collectors</option>
              <option value={RANK_WINNER_MONSTERS}>Top Battle Monsters</option>
              <option value={RANK_WINNER_PLAYERS}>Top Battle Players</option>
              <option value={RANK_GRAVEYARD}>Graveyard</option>
            </select>
          </div>
        </div>
      </div>
    )
  }

  private handleChangeRank = (event: any) => {
    const { history } = this.props

    switch (event.target.value) {
      case RANK_ELDEST:
        return history.push("/rank")
      case RANK_ACTIVITY:
        return history.push("/rank/activity")
      case RANK_COLLECTORS:
        return history.push("/rank/collectors")
      case RANK_WINNER_MONSTERS:
        return history.push("/rank/battle-monsters")
      case RANK_WINNER_PLAYERS:
        return history.push("/rank/battle-players")
      case RANK_GRAVEYARD:
        return history.push("/rank/graveyard")
    }
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