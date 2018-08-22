import * as React from "react"
// import { Link } from "react-router-dom"
import { connect } from "react-redux"
import { State } from "../../store"
import gql from "graphql-tag"
import { Query } from "react-apollo"
import { getEosAccount } from "../../api/scatter"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "../monsters/MonsterCard"
import TitleBar from "../shared/TitleBar"

const GET_MY_MONSTERS = gql`
query MonstersByOwner($owner: String) {
  allPets(
    first:9999,
    condition: {
      owner: $owner,
      destroyedAt: "1970-01-01T00:00:00"
    }
  ) {
    edges {
      node {
        id
        petName
        typeId
        owner
        createdAt
        deathAt
        destroyedAt
      }
    }
  }
}
`

interface Props {
  identity: any,
}

class MyMonstersScreen extends React.Component<Props, {}> {
  public render() {

    const { identity } = this.props

    const eosAccount = getEosAccount(identity)

    if (eosAccount) {
      return this.renderMonsters(eosAccount)
    } else {
      return <div>Ooopss... looks like you are not identified</div>
    }
  }

  private renderMonsters(eosAccount: string) {

    const variables = { owner: eosAccount }

    return <Query query={GET_MY_MONSTERS} variables={variables}>
      {({ data: { allPets }, loading }) => {

        let subHeader = null
        let newMonsterButton = null
        let arenaButton = null

        if (loading || !allPets) {
          subHeader = (
            <small>
              <i className="fa fa-spin fa-spinner" /> Loading Monsters...
            </small>
          )
        } else {
          subHeader = (<small>You have {allPets.edges.length} monsters</small>)

          newMonsterButton = (
            <a className="button is-success" data-empty="">
              New Monster
            </a>
          )

          arenaButton = (
            <a className="button is-info" data-empty="">
              Battle Arena
            </a>
          )
        }

        return (
          <PageContainer>
            <TitleBar
              title="My Monsters"
              menu={[subHeader, newMonsterButton, arenaButton]} />
            {allPets && <MonstersList monsters={allPets} />}
          </PageContainer>
        )
      }}
    </Query>
  }
}

const MonstersList = ({ monsters }: any) => (
  <div className="columns is-multiline">
    {monsters.edges.map(({ node: monster }: any) => (
      <div className="column monster-column" key={monster.id}>
        <MonsterCard {...monster} />
      </div>
    ))}
  </div>
)

const mapStateToProps = (state: State) => ({
  identity: state.identity,
})

export default connect(mapStateToProps)(MyMonstersScreen)