import * as React from "react"
import { Query } from "react-apollo"
import * as moment from "moment"
import { Link } from "react-router-dom"

import TitleBar from "../shared/TitleBar"
import { QUERY_ELDEST_RANK } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

class EldestRank extends React.Component<{}, {}> {

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    return <div className="rank">
      <TitleBar title="Eldest Alive Monsters" />
      <Query query={QUERY_ELDEST_RANK} variables={variables}>
        {({data: {allPets}, loading, refetch}) => {

          if (loading || !allPets) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading...
            </span>
          }

          const monsters = allPets ? allPets.edges : []
          return <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Monster</th>
                <th className="is-hidden-mobile">Owner</th>
                <th>Birth</th>
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
              </tr>
            ))}
            </tbody>
          </table>
        }}
      </Query>
    </div>
  }
}

export default EldestRank