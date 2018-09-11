import * as React from "react"
import { Query } from "react-apollo"
import { Link } from "react-router-dom"

import TitleBar from "../shared/TitleBar"
import { QUERY_TOP_BATTLE_MONSTERS } from "./ranking.gql"
import { monsterImageSrc } from "../monsters/monsters"

class TopBattleMonstersRank extends React.Component<{}, {}> {

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    return <div className="rank">
      <TitleBar title="Top Battle Monsters" />
      <Query query={QUERY_TOP_BATTLE_MONSTERS} variables={variables}>
        {({data: {allVrankingBattlePets}, loading, refetch}) => {

          if (loading || !allVrankingBattlePets) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading...
            </span>
          }

          const monsters = allVrankingBattlePets ? allVrankingBattlePets.edges : []
          return <table>
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
        }}
      </Query>
    </div>
  }
}

export default TopBattleMonstersRank