import * as React from "react"
import { Query } from "react-apollo"
import { Link } from "react-router-dom"

import TitleBar from "../shared/TitleBar"
import { QUERY_TOP_ACTIVITY } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

class TopActivityRank extends React.Component<{}, {}> {

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    return <div className="rank">
      <TitleBar title="Top Activity Monsters" />
      <Query query={QUERY_TOP_ACTIVITY} variables={variables}>
        {({data, loading, refetch}) => {

          if (loading || !data || !data.allVrankingActives) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const { allVrankingActives } = data

          const monsters = allVrankingActives ? allVrankingActives.edges : []
          return <table>
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
        }}
      </Query>
    </div>
  }
}

export default TopActivityRank