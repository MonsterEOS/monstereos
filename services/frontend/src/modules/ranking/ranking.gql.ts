

export const QUERY_ELDEST_RANK = gql`
query MonstersByOwner($limit: Int, $offset: Int) {
  allPets(
    first: $limit,
    offset: $offset,
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