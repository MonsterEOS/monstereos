import * as React from "react"
import { Query } from "react-apollo"

import TitleBar from "../shared/TitleBar"
import { QUERY_TOP_COLLECTORS } from "./ranking.gql"

class TopCollectorsRank extends React.Component<{}, {}> {

  public render() {

    const variables = {
      limit: 21,
      offset: 0
    }

    return <div className="rank">
      <TitleBar title="Top Collectors Players" />
      <Query query={QUERY_TOP_COLLECTORS} variables={variables}>
        {({data, loading, refetch}) => {

          if (loading || !data || !data.allVrankingCollectors) {
            return <span>
              <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
            </span>
          }

          const monsters = data.allVrankingCollectors ? data.allVrankingCollectors.edges : []
          return <table>
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
        }}
      </Query>
    </div>
  }
}

export default TopCollectorsRank