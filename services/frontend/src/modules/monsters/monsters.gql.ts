import gql from "graphql-tag"
import * as moment from "moment"

import { GlobalConfig } from "../../store"
import { calcMonsterStats, MonsterProps } from "../monsters/monsters"

export const GET_MY_MONSTERS = gql`
  query MonstersByOwner($owner: String) {
    allPets(
      first: 9999
      condition: { owner: $owner, destroyedAt: "1970-01-01T00:00:00" }
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
            last: 1
            condition: { action: "feedpet" }
          ) {
            edges {
              node {
                createdAt
              }
            }
          }
          lastAwake: petActionsByPetId(
            last: 1
            condition: { action: "awakepet" }
          ) {
            edges {
              node {
                createdAt
              }
            }
          }
          lastBed: petActionsByPetId(last: 1, condition: { action: "bedpet" }) {
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

export const GET_MONSTER = gql`
  query MonsterById($id: Int) {
    allPets(first: 1, condition: { id: $id }) {
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
            last: 1
            condition: { action: "feedpet" }
          ) {
            edges {
              node {
                createdAt
              }
            }
          }
          lastAwake: petActionsByPetId(
            last: 1
            condition: { action: "awakepet" }
          ) {
            edges {
              node {
                createdAt
              }
            }
          }
          lastBed: petActionsByPetId(last: 1, condition: { action: "bedpet" }) {
            edges {
              node {
                createdAt
              }
            }
          }
          actions: petActionsByPetId(
            last: 9999
            orderBy: CREATED_AT_DESC
            condition: { isInvalid: false }
          ) {
            edges {
              node {
                action
                createdAt
                createdBlock
                createdTrx
                createdEosacc
              }
            }
          }
        }
      }
    }
  }
`

export const petsGqlToMonsters = (allPets: any, globalConfig: GlobalConfig) => {
  return allPets.edges.map(({ node }: any) => {
    const createdAt = moment.utc(node.createdAt).valueOf()

    const lastFeed =
      node.lastFeed &&
      node.lastFeed.edges &&
      node.lastFeed.edges.length &&
      node.lastFeed.edges[0].node

    const lastFeedAt = lastFeed
      ? moment.utc(lastFeed.createdAt).valueOf()
      : createdAt

    const lastBed =
      node.lastBed &&
      node.lastBed.edges &&
      node.lastBed.edges.length &&
      node.lastBed.edges[0].node

    const lastBedAt = lastBed
      ? moment.utc(lastBed.createdAt).valueOf()
      : createdAt

    const lastAwake =
      node.lastAwake &&
      node.lastAwake.edges &&
      node.lastAwake.edges.length &&
      node.lastAwake.edges[0].node

    const lastAwakeAt = lastAwake
      ? moment.utc(lastAwake.createdAt).valueOf()
      : 0 // just born, never woke up

    const deathAt = moment.utc(node.deathAt).valueOf()

    const monster: MonsterProps = {
      id: Number(node.id),
      name: String(node.petName),
      type: Number(node.typeId),
      elements: [],
      owner: String(node.owner),
      health: 100,
      hunger: 100,
      energy: 100,
      createdAt,
      deathAt,
      lastFeedAt,
      lastAwakeAt,
      lastBedAt,
      isSleeping: lastBedAt > lastAwakeAt,
      actions: loadActions(node.actions),
    }

    return calcMonsterStats(monster, globalConfig)
  })
}

const loadActions = (actions: any) => {
  if (!actions || !actions.edges || !actions.edges.length) {
    return []
  }

  return actions.edges.map(({ node }: any) => ({
    action: String(node.action),
    createdAt: moment.utc(node.createdAt).valueOf(),
    author: String(node.createdEosacc),
    block: Number(node.createdBlock),
    transaction: String(node.createdTrx),
  }))
}
