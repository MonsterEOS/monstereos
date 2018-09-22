import * as React from "react"
// import { Link } from "react-router-dom"
import { connect } from "react-redux"
import { State, doLoadMyMonsters } from "../../store"
import { getEosAccount } from "../../utils/scatter"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "./MonsterCard"
import TitleBar from "../shared/TitleBar"

import NewMonsterModal from "./NewMonsterModal"
import { MonsterProps } from "./monsters"

interface Props {
  eosAccount: string,
  myMonsters: MonsterProps[],
  globalConfig: any,
  dispatchDoLoadMyMonsters: any
}

interface ReactState {
  showNewMonsterModal: boolean
}

class MyMonstersScreen extends React.Component<Props, ReactState> {

  public state = {
    showNewMonsterModal: false
  }

  private refreshHandler: any = undefined

  public componentDidMount() {
    this.refresh()
  }

  public componentWillUnmount() {
    clearTimeout(this.refreshHandler)
  }

  public render() {

    const { eosAccount } = this.props

    if (eosAccount) {
      return this.renderMonsters()
    } else {
      return <PageContainer>
          <div>Ooopss... looks like you are not identified</div>
        </PageContainer>
    }
  }

  private renderMonsters() {

    const { myMonsters, dispatchDoLoadMyMonsters } = this.props
    const { showNewMonsterModal } = this.state

    const subHeader = (<small className="is-hidden-mobile">
      You have {myMonsters.length} monsters
      </small>)

    const newMonsterButton = (
      <a
        className="button is-success"
        onClick={() => this.setState({showNewMonsterModal: true})}>
        New Monster
      </a>
    )

    const aliveMonsters = myMonsters.filter((monster: any) => !monster.deathAt)
    const deadMonsters = myMonsters.filter((monster: any) => monster.deathAt)

    const refetchMonsters = () => {
      setTimeout(() => dispatchDoLoadMyMonsters(), 500)
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
          notMobile
          title="My Monsters"
          menu={[subHeader, newMonsterButton]} />
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
  }

  private refresh = async () => {
    const { dispatchDoLoadMyMonsters } = this.props

    dispatchDoLoadMyMonsters()

    // refresh monsters each minute
    this.refreshHandler = setTimeout(this.refresh, 60 * 1000) 
  }
}

const MonstersList = ({ monsters, update }: any) => (
  <div className="columns is-multiline">
    {monsters.map((monster: any) => (
      <MonsterCard
        key={monster.id}
        monster={monster}
        requestUpdate={update} />
    ))}
  </div>
)

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    myMonsters: state.myMonsters,
    globalConfig: state.globalConfig,
  }
}

const mapDispatchToProps = {
  dispatchDoLoadMyMonsters: doLoadMyMonsters
}

export default connect(mapStateToProps, mapDispatchToProps)(MyMonstersScreen)