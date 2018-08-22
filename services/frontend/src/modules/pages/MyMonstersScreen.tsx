import * as React from "react"
// import { Link } from "react-router-dom"
import { connect } from "react-redux"
import { State, GlobalConfig } from "../../store"
import gql from "graphql-tag"
import { Query } from "react-apollo"
import { getEosAccount } from "../../utils/scatter"
import * as moment from "moment"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "../monsters/MonsterCard"
import TitleBar from "../shared/TitleBar"
import { calcMonsterStats, MonsterProps } from "../monsters/monsters"

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
        lastFeed: petActionsByPetId(
          last:1,
          condition: {
            action: "feedpet"
          }
        ) {
          edges {
            node {
              createdAt
            }
          }
        }
        lastAwake: petActionsByPetId(
          last:1,
          condition: {
            action: "awakepet"
          }
        ) {
          edges {
            node {
              createdAt
            }
          }
        }
        lastBed: petActionsByPetId(
          last:1,
          condition: {
            action: "bedpet"
          }
        ) {
          edges {
            node {
              createdAt
            }
          }
        }
      }
    }
  }
}
`

const petsGqlToMonsters = (allPets: any, globalConfig: GlobalConfig) => {
  return allPets.edges.map(({ node }: any) => {

    const createdAt = moment.utc(node.createdAt).valueOf()

    const lastFeed =
      node.lastFeed &&
      node.lastFeed.edges &&
      node.lastFeed.edges.length &&
      node.lastFeed.edges[0].node

    const lastFeedAt = lastFeed ?
      moment.utc(lastFeed.createdAt).valueOf() :
      createdAt

    const lastBed =
      node.lastBed &&
      node.lastBed.edges &&
      node.lastBed.edges.length &&
      node.lastBed.edges[0].node

    const lastBedAt = lastBed ?
      moment.utc(lastBed.createdAt).valueOf() :
      createdAt

    const lastAwake =
      node.lastAwake &&
      node.lastAwake.edges &&
      node.lastAwake.edges.length &&
      node.lastAwake.edges[0].node

    const lastAwakeAt = lastAwake ?
      moment.utc(lastAwake.createdAt).valueOf() :
      0 // just born, never woke up

    const deathAt = moment.utc(node.deathAt).valueOf()

    const monster: MonsterProps = {
      id: Number(node.id),
      name: String(node.petName),
      type: Number(node.typeId),
      owner: String(node.owner),
      health: 100,
      hunger: 100,
      awake: 100,
      createdAt,
      deathAt,
      lastFeedAt,
      lastAwakeAt,
      lastBedAt,
      isSleeping: lastBedAt > lastAwakeAt
    }

    return calcMonsterStats(monster, globalConfig)
  })
}

interface Props {
  eosAccount: string,
  globalConfig: any,
}

class MyMonstersScreen extends React.Component<Props, {}> {
  public render() {

    const { eosAccount } = this.props

    if (eosAccount) {
      return this.renderMonsters(eosAccount)
    } else {
      return <div>Ooopss... looks like you are not identified</div>
    }
  }

  private renderMonsters(eosAccount: string) {

    const variables = { owner: eosAccount }

    const { globalConfig } = this.props

    return <Query query={GET_MY_MONSTERS} variables={variables}>
      {({ data: { allPets }, loading }) => {

        let subHeader = null
        let newMonsterButton = null
        let arenaButton = null

        const monsters = allPets ? petsGqlToMonsters(allPets, globalConfig) : []

        if (loading || !allPets) {
          subHeader = (
            <small>
              <i className="fa fa-spin fa-spinner" /> Loading Monsters...
            </small>
          )
        } else {
          subHeader = (<small>You have {monsters.length} monsters</small>)

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

        const aliveMonsters = allPets && monsters.filter((monster: any) => !monster.deathAt)
        const deadMonsters = allPets && monsters.filter((monster: any) => monster.deathAt)

        return (
          <PageContainer>
            <TitleBar
              title="My Monsters"
              menu={[subHeader, newMonsterButton, arenaButton]} />
            {aliveMonsters && <MonstersList monsters={aliveMonsters} />}

            {deadMonsters &&
              <React.Fragment>
                <h3>My Dead Monsters</h3>
                <MonstersList monsters={deadMonsters} />
              </React.Fragment>}
          </PageContainer>
        )
      }}
    </Query>
  }
}

const MonstersList = ({ monsters }: any) => (
  <div className="columns is-multiline">
    {monsters.map((monster: any) => (
      <div className="column monster-column" key={monster.id}>
        <MonsterCard monster={monster} />
      </div>
    ))}
  </div>
)

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    globalConfig: state.globalConfig,
  }
}

export default connect(mapStateToProps)(MyMonstersScreen)