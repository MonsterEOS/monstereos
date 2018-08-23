import * as React from "react"
// import { Link } from "react-router-dom"
import { connect } from "react-redux"
import { State } from "../../store"
import { Query } from "react-apollo"
import { getEosAccount } from "../../utils/scatter"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "../monsters/MonsterCard"
import TitleBar from "../shared/TitleBar"

import NewMonsterModal from "../monsters/NewMonsterModal"
import { GET_MY_MONSTERS, petsGqlToMonsters } from "../monsters/monsters.gql"

interface Props {
  eosAccount: string,
  globalConfig: any,
}

interface ReactState {
  showNewMonsterModal: boolean
}

class MyMonstersScreen extends React.Component<Props, ReactState> {

  public state = {
    showNewMonsterModal: false
  }

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
    const { showNewMonsterModal } = this.state

    return <Query query={GET_MY_MONSTERS} variables={variables}>
      {({ data: { allPets }, loading, refetch }) => {

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
          subHeader = (<small className="is-hidden-mobile">
            You have {monsters.length} monsters
            </small>)

          newMonsterButton = (
            <a
              className="button is-success"
              onClick={() => this.setState({showNewMonsterModal: true})}>
              New Monster
            </a>
          )

          // arena coming soon
          arenaButton = (
            // <a className="button is-info">
            //   Battle Arena
            // </a>
            <span>{" "}</span>
          )
        }

        const aliveMonsters = allPets && monsters.filter((monster: any) => !monster.deathAt)
        const deadMonsters = allPets && monsters.filter((monster: any) => monster.deathAt)

        const refetchMonsters = () => {
          setTimeout(() => refetch(variables), 500)
        }

        const newMonsterClosure = (doRefetch: boolean) => {
          this.setState({showNewMonsterModal: false})
          if (doRefetch) {
            refetchMonsters()
          }
        }

        return (
          <PageContainer>
            <TitleBar
              title="My Monsters"
              menu={[subHeader, newMonsterButton, arenaButton]} />
            {aliveMonsters &&
              <MonstersList
                monsters={aliveMonsters}
                update={refetchMonsters} />}

            {deadMonsters &&
              <React.Fragment>
                <h3>My Dead Monsters</h3>
                <MonstersList
                  monsters={deadMonsters}
                  update={refetchMonsters} />
              </React.Fragment>}

            {showNewMonsterModal &&
              <NewMonsterModal
                closeModal={newMonsterClosure} />
            }
          </PageContainer>
        )
      }}
    </Query>
  }
}

const MonstersList = ({ monsters, update }: any) => (
  <div className="columns is-multiline">
    {monsters.map((monster: any) => (
      <div className="column monster-column" key={monster.id}>
        <MonsterCard monster={monster} requestUpdate={update} />
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