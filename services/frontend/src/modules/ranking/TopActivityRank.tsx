import * as React from "react"
import { Query } from "react-apollo"
import { Link } from "react-router-dom"

import TitleBar from "../shared/TitleBar"
import { QUERY_TOP_ACTIVITY } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

interface ReactState {
  loadMore:boolean
}
class TopActivityRank extends React.Component<{}, ReactState> {

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
      <TitleBar title="Top Activity Monsters" />
      <Query query={QUERY_TOP_ACTIVITY} variables={variables}>
        {({data, loading, fetchMore}) => {

          if (loading || !data || !data.allVrankingActives) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const { allVrankingActives } = data

          const monsters = allVrankingActives ? allVrankingActives.edges : []

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
                this.setState({loadMore:fetchMoreResult.allVrankingActives.edges.length === variables.limit })
                return Object.assign({}, prev, {allVrankingActives : 
                  Object.assign({}, prev.allVrankingActives, {edges:[...prev.allVrankingActives.edges, ...fetchMoreResult.allVrankingActives.edges]})
                  })
            }})
          }

          return <div>
            <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Monster</th>
                <th>Total Actions</th>
                <th className="is-hidden-mobile">Owner</th>
              </tr>
            </thead>
            <tbody>
            {monsters.map(({node}: any, index: number) => (
              <tr key={index}>
                <td>{index+1}.</td>
                <td>
                  <img src={monsterImageSrc(node.typeId)} className="monster-rank-icon" />
                  <Link to={`/monster/${node.id}`}>{node.petName} <small>#{node.id}</small></Link>
                </td>
                <td>{node.actions}</td>
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

export default TopActivityRank