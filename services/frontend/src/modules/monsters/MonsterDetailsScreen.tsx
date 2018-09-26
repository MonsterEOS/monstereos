import * as React from "react"
import { connect } from "react-redux"
import { State } from "../../store"
import { Query } from "react-apollo"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "./MonsterCard"
import TitleBar from "../shared/TitleBar"

import { GET_MONSTER, petsGqlToMonsters } from "./monsters.gql"
import MonsterHistory from "./MonsterHistory"
import { loadMonsterById } from "../../utils/eos"
import { MonsterProps } from "./monsters"

interface Props {
  match: any,
  globalConfig: any,
}

interface ReactState {
  monster?: MonsterProps
}

class MyMonstersScreen extends React.Component<Props, ReactState> {

  public state = { monster: undefined }

  public async componentDidMount() {
    this.refresh()
  }

  public render() {

    const { match: {params: { id } } } = this.props

    const variables = { id }

    const { globalConfig } = this.props

    const { monster } = this.state

    return <Query query={GET_MONSTER} variables={variables}>
      {({ data , loading, refetch }) => {

        let subHeader = null

        const monsters = data && data.allPets ? petsGqlToMonsters(data.allPets, globalConfig) : []
        let monsterDetails = null

        if (loading || !data || !data.allPets) {
          subHeader = (
            <small>
              <i className="fa fa-spin fa-spinner" /> Loading Monster... Our servers are Syncing with the Chain
            </small>
          )
        } else {
          monsterDetails = monsters[0]
          subHeader = (<small className="is-hidden-mobile">
            This monster has {(monsterDetails && monsterDetails.actions && monsterDetails.actions.length) || 0} actions
            </small>)
        }

        const refetchMonster = () => {
          setTimeout(() => refetch(variables), 500)
        }

        return (
          <PageContainer>
            <TitleBar
              notMobile
              title="Monster Details"
              menu={[subHeader]} />

            { monster &&
              <div className="columns is-multiline">
                <MonsterCard
                  monster={monster!}
                  requestUpdate={refetchMonster}
                  hideLink />
                <div className="column">
                  {monsterDetails && <MonsterHistory actions={monsterDetails.actions} />}
                </div>
              </div>
            }
          </PageContainer>
        )
      }}
    </Query>
  }

  private refresh = async () => {
    const { match: {params: { id } }, globalConfig } = this.props
    const monster = await loadMonsterById(id, globalConfig)
    this.setState({monster})
  }
}

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
  }
}

export default connect(mapStateToProps)(MyMonstersScreen)