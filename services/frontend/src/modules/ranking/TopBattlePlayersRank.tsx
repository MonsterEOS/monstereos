import * as React from "react"
import { Query } from "react-apollo"

import { QUERY_TOP_BATTLE_PLAYERS } from "./ranking.gql"

interface ReactState {
  loadMore:boolean
}
class TopBattlePlayersRank extends React.Component<{}, ReactState> {

  public state = {
    loadMore:true
  }
  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    const {loadMore} = this.state

    return <div className="rank">
      <Query query={QUERY_TOP_BATTLE_PLAYERS} variables={variables}>
        {({data, loading, fetchMore}) => {

          if (loading || !data || !data.allVrankingBattlePlayers) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const { allVrankingBattlePlayers } = data

          const players = allVrankingBattlePlayers ? data.allVrankingBattlePlayers.edges : []
          const onLoadMore = () => {
            fetchMore({
              variables: {
                offset: players.length
              },
              updateQuery: (prev, { fetchMoreResult }) => {
                if (!fetchMoreResult) { 
                  this.setState({loadMore:false})
                  return prev 
                }              
                this.setState({loadMore:fetchMoreResult.allVrankingBattlePlayers.edges.length === variables.limit })
                return Object.assign({}, prev, {allVrankingBattlePlayers : 
                  Object.assign({}, prev.allVrankingBattlePlayers, {edges:[...prev.allVrankingBattlePlayers.edges, ...fetchMoreResult.allVrankingBattlePlayers.edges]})
                  })
              }
            })
          }

          return <div><table>
            <thead>
              <tr>
                <th>#</th>
                <th>Player</th>
                <th>Wins</th>
                <th>Losses</th>
              </tr>
            </thead>
            <tbody>
            {players.map(({node}: any, index: number) => (
              <tr key={index}>
                <td>{index+1}.</td>
                <td>{node.picker}</td>
                <td>{node.wins}</td>
                <td>{node.losses}</td>
              </tr>
            ))}
            </tbody>
          </table>
          {loadMore &&
            <footer className="card-footer">
              <a className="card-footer-item"
                onClick={onLoadMore}>
                Load more
              </a>
            </footer> 
          }
        </div>
        }}
      </Query>
    </div>
  }
}

export default TopBattlePlayersRank