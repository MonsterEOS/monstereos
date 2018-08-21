import * as React from "react"
import { Link } from "react-router-dom"
import gql from "graphql-tag"
import { Query } from "react-apollo"

import PageContainer from "../shared/PageContainer"

const GET_ELDEST_MONSTERS = gql`
  {
    allPets(
      first:5000,
      orderBy: ID_ASC,
      condition: {
        deathAt: "1970-01-01T00:00:00",
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
        }
      }
    }
  }
`

const RankScreen = () => (
  <Query query={GET_ELDEST_MONSTERS}>
    {({ data: { allPets }, loading }) => {

      if (loading || !allPets) {
        return <div>Loading Monsters...</div>
      }

      /* <h1>Monsters Ranking</h1>
  <h3>
    Winner Monsters
  </h3>
  <h3>
    Eldest Alive Monsters
  </h3>
  <h3>
    Healthier Monsters
  </h3>
  <h3>
    Graveyard
  </h3>

  <h1>Players Ranking</h1>
  <h3>
    Winner Players
  </h3>
  <h3>
    Active Players
  </h3>
  <h3>
    Collectors
  </h3> */

      console.info(allPets)

      return (
        <PageContainer>
          <h2>Alive Monsters: {allPets.edges.length}</h2>
          <MonstersList monsters={allPets} />
        </PageContainer>
      )
    }}
  </Query>
)

const MonstersList = ({ monsters }: any) => (
  <ul>
    {monsters.edges.map(({ node: monster }: any) => {
      return (
        <li key={monster.id}>
          <Link to={`/monster/${monster.id}`}>{monster.petName}</Link>
        </li>
      )
    })}
  </ul>
)

export default RankScreen