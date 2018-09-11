import * as React from "react"
import { Query } from "react-apollo"
import * as moment from "moment"
import { Link } from "react-router-dom"

import TitleBar from "../shared/TitleBar"
import { QUERY_GRAVEYARD } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

class GraveyardRank extends React.Component<{}, {}> {

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    return <div className="rank">
      <TitleBar title="Graveyard" />
      <Query query={QUERY_GRAVEYARD} variables={variables}>
        {({data: {allVrankingGraveyards}, loading, refetch}) => {

          if (loading || !allVrankingGraveyards) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading...
            </span>
          }

          const monsters = allVrankingGraveyards ? allVrankingGraveyards.edges : []
          return <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Monster</th>
                <th className="is-hidden-mobile">Owner</th>
                <th>Birth</th>
                <th>Death</th>
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
                <td className="is-hidden-mobile">{node.owner}</td>
                <td>{moment(node.createdAt).format("MMMM, D YYYY @ h:mm a")}</td>
                <td>{moment(node.deathAt).format("MMMM, D YYYY @ h:mm a")}</td>
              </tr>
            ))}
            </tbody>
          </table>
        }}
      </Query>
    </div>
  }
}

export default GraveyardRank