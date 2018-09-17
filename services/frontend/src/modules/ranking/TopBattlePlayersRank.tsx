import * as React from "react"
import { Query } from "react-apollo"

import TitleBar from "../shared/TitleBar"
import { QUERY_TOP_BATTLE_PLAYERS } from "./ranking.gql"

class TopBattlePlayersRank extends React.Component<{}, {}> {

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    return <div className="rank">
      <TitleBar title="Top Battle Players" />
      <Query query={QUERY_TOP_BATTLE_PLAYERS} variables={variables}>
        {({data, loading, refetch}) => {

          if (loading || !data || !data.allVrankingBattlePlayers) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const monsters = data.allVrankingBattlePlayers ? data.allVrankingBattlePlayers.edges : []
          return <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Player</th>
                <th>Wins</th>
                <th>Losses</th>
              </tr>
            </thead>
            <tbody>
            {monsters.map(({node}: any, index: number) => (
              <tr key={index}>
                <td>{index+1}.</td>
                <td>{node.picker}</td>
                <td>{node.wins}</td>
                <td>{node.losses}</td>
              </tr>
            ))}
            </tbody>
          </table>
        }}
      </Query>
    </div>
  }
}

export default TopBattlePlayersRank