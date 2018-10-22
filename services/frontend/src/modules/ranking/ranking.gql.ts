import gql from "graphql-tag"

export const QUERY_ELDEST_RANK = gql`
  query EldestRank($limit: Int!, $offset: Int!) {
    allPets(
      first: $limit
      offset: $offset
      orderBy: ID_ASC
      condition: {
        deathAt: "1970-01-01T00:00:00"
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
        }
      }
    }
  }
`

export const QUERY_TOP_ACTIVITY = gql`
  query TopActivityRank($limit: Int!, $offset: Int!) {
    allVrankingActives(first: $limit, offset: $offset) {
      edges {
        node {
          id
          actions
          petName
          typeId
          owner
        }
      }
    }
  }
`

export const QUERY_TOP_COLLECTORS = gql`
  query TopCollectorsRank($limit: Int!, $offset: Int!) {
    allVrankingCollectors(first: $limit, offset: $offset) {
      edges {
        node {
          owner
          pets
        }
      }
    }
  }
`

export const QUERY_TOP_BATTLE_MONSTERS = gql`
  query TopBattleMonstersRank($limit: Int!, $offset: Int!) {
    allVrankingBattlePets(first: $limit, offset: $offset) {
      edges {
        node {
          petId
          petName
          typeId
          owner
          wins
          losses
        }
      }
    }
  }
`

export const QUERY_TOP_BATTLE_PLAYERS = gql`
  query TopBattlePlayersRank($limit: Int!, $offset: Int!) {
    allVrankingBattlePlayers(first: $limit, offset: $offset) {
      edges {
        node {
          picker
          wins
          losses
        }
      }
    }
  }
`

export const QUERY_GRAVEYARD = gql`
  query GraveyardRank($limit: Int!, $offset: Int!) {
    allVrankingGraveyards(first: $limit, offset: $offset) {
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
