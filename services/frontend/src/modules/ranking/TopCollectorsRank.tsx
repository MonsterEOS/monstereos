import * as React from "react"
import { Query } from "react-apollo"

import TitleBar from "../shared/TitleBar"
import { QUERY_TOP_COLLECTORS } from "./ranking.gql"

interface ReactState {
  loadMore:boolean
}

class TopCollectorsRank extends React.Component<{}, ReactState> {

  public state = {
    loadMore: true
  }
  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    const {loadMore} = this.state

    return <div className="rank">
      <TitleBar title="Top Collectors Players" />
      <Query query={QUERY_TOP_COLLECTORS} variables={variables}>
        {({data, loading, fetchMore}) => {

          if (loading || !data || !data.allVrankingCollectors) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const monsters = data.allVrankingCollectors ? data.allVrankingCollectors.edges : []
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
                this.setState({loadMore:fetchMoreResult.allVrankingCollectors.edges.length === variables.limit })
                return Object.assign({}, prev, {allVrankingCollectors : 
                  Object.assign({}, prev.allVrankingCollectors, {edges:[...prev.allVrankingCollectors.edges, ...fetchMoreResult.allVrankingCollectors.edges]})
                  })
            }})
          }
          return <div>
            <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Player</th>
                <th>Different Type Monsters</th>
              </tr>
            </thead>
            <tbody>
            {monsters.map(({node}: any, index: number) => (
              <tr key={index}>
                <td>{index+1}.</td>
                <td>{node.owner}</td>
                <td>{node.pets}</td>
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

export default TopCollectorsRank