import * as React from "react"
import { Query } from "react-apollo"
import * as moment from "moment"
import { Link } from "react-router-dom"

import { QUERY_ELDEST_RANK } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

interface ReactState {
  loadMore:boolean
}

class EldestRank extends React.Component<{}, ReactState> {

  public state = {loadMore:true}

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }
    const {loadMore} = this.state

    return <div className="rank">
      <Query query={QUERY_ELDEST_RANK} variables={variables}>
        {({data, loading, fetchMore}) => {

          if (loading || !data || !data.allPets) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const { allPets } = data

          const monsters = allPets ? allPets.edges : []

          const onLoadMore = () => {

            fetchMore({
              variables: {
                offset: allPets.edges.length
              },
              updateQuery: (prev, { fetchMoreResult }) => {
                if (!fetchMoreResult) {
                  this.setState({loadMore:false})
                  return prev
                }
                this.setState({loadMore:fetchMoreResult.allPets.edges.length === variables.limit })
                return Object.assign({}, prev, {allPets :
                  Object.assign({}, prev.allPets, {edges:[...prev.allPets.edges, ...fetchMoreResult.allPets.edges]})
                  })
            }})
          }

          return <div>
            <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Monster</th>
                <th className="is-hidden-mobile">Owner</th>
                <th>Birth</th>
              </tr>
            </thead>
            <tbody>
            {monsters.filter(({node}: any) => node.typeId >= 0).map(({node}: any, index: number) => (
              <tr key={index}>
                <td>{index+1}.</td>
                <td>
                  <Link to={`/monster/${node.id}`}>
                    <img src={monsterImageSrc(node.typeId)} className="monster-rank-icon" />
                    {node.petName} <small>#{node.id}</small>
                  </Link>
                </td>
                <td className="is-hidden-mobile">{node.owner}</td>
                <td>{moment(node.createdAt).format("MMMM, D YYYY @ h:mm a")}</td>
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

export default EldestRank