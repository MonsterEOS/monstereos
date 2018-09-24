import * as React from "react"
import { Query } from "react-apollo"
import { Link } from "react-router-dom"

import { QUERY_TOP_BATTLE_MONSTERS } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

interface ReactState{
  loadMore:boolean
}

class TopBattleMonstersRank extends React.Component<{}, ReactState> {

  public state = {
    loadMore : true
  }
  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    const {loadMore} = this.state

    return <div className="rank">
      <Query query={QUERY_TOP_BATTLE_MONSTERS} variables={variables}>
        {({data, loading, fetchMore}) => {

          if (loading || !data || !data.allVrankingBattlePets) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const { allVrankingBattlePets } = data

          const monsters = allVrankingBattlePets ? allVrankingBattlePets.edges : []
          
          const onLoadMore = () => {            
            
            fetchMore({
              variables: {
                offset: monsters.length
              },
              updateQuery: (prev, { fetchMoreResult }) => {                
                if (!fetchMoreResult) { 
                  this.setState({loadMore:false})
                  return prev 
                }              
                this.setState({loadMore:fetchMoreResult.allVrankingBattlePets.edges.length === variables.limit })
                return Object.assign({}, prev, {allVrankingBattlePets : 
                  Object.assign({}, prev.allVrankingBattlePets, {edges:[...prev.allVrankingBattlePets.edges, ...fetchMoreResult.allVrankingBattlePets.edges]})
                  })
            }})
          }

          return <div>
            <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Monster</th>
                <th>Wins</th>
                <th>Losses</th>
                <th className="is-hidden-mobile">Owner</th>
              </tr>
            </thead>
            <tbody>
            {monsters.map(({node}: any, index: number) => (
              <tr key={index}>
                <td>{index+1}.</td>
                <td>
                  <img src={monsterImageSrc(node.typeId)} className="monster-rank-icon" />
                  <Link to={`/monster/${node.petId}`}>{node.petName} <small>#{node.petId}</small></Link>
                </td>
                <td>{node.wins}</td>
                <td>{node.losses}</td>
                <td className="is-hidden-mobile">{node.owner}</td>
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

export default TopBattleMonstersRank