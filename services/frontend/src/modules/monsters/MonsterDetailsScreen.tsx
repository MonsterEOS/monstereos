import * as React from "react"
import { connect } from "react-redux"
import { State } from "../../store"
import { Query } from "react-apollo"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "./MonsterCard"
import TitleBar from "../shared/TitleBar"

import { GET_MONSTER, petsGqlToMonsters } from "./monsters.gql"
import MonsterHistory from "./MonsterHistory"

interface Props {
  match: any,
  globalConfig: any,
}

class MyMonstersScreen extends React.Component<Props, {}> {

  public render() {

    const { match: {params: { id } } } = this.props

    const variables = { id }

    const { globalConfig } = this.props

    return <Query query={GET_MONSTER} variables={variables}>
      {({ data: { allPets }, loading, refetch }) => {

        let subHeader = null

        const monsters = allPets ? petsGqlToMonsters(allPets, globalConfig) : []
        let monster = null

        if (loading || !allPets) {
          subHeader = (
            <small>
              <i className="fa fa-spin fa-spinner" /> Loading Monster...
            </small>
          )
        } else {
          monster = monsters[0]
          subHeader = (<small className="is-hidden-mobile">
            This monster has {(monster && monster.actions && monster.actions.length) || 0} actions
            </small>)
        }

        console.info(monster, monsters)

        const refetchMonster = () => {
          setTimeout(() => refetch(variables), 500)
        }

        return (
          <PageContainer>
            <TitleBar
              title="Monster Details"
              menu={[subHeader]} />

            { monster &&
              <div className="columns is-multiline">
                <div className="column monster-column">
                  <MonsterCard monster={monster} requestUpdate={refetchMonster} />
                </div>
                <div className="column">
                  <MonsterHistory actions={monster.actions} />
                </div>
              </div>
            }
          </PageContainer>
        )
      }}
    </Query>
  }
}

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
  }
}

export default connect(mapStateToProps)(MyMonstersScreen)