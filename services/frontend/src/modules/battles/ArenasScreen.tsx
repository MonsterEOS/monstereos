import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification, GlobalConfig, NOTIFICATION_ERROR, NOTIFICATION_SUCCESS } from "../../store"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"
import { Arena, getCurrentBattle, getAvailableMonstersToBattle } from "./battles"
import { loadArenas, createBattle, joinBattle } from "../../utils/eos"
import BattleCard from "./BattleCard"
import { getEosAccount } from "../../utils/scatter"
import { MonsterProps } from "../monsters/monsters"
import BattleMonsterPickModal from "./BattleMonsterPickModal"

interface Props {
  globalConfig: GlobalConfig,
  dispatchPushNotification: any,
  scatter: any,
  identity: string,
  history: any,
  myMonsters: MonsterProps[]
}

interface ReactState {
  arenas: Arena[],
  showMonstersSelection: boolean,
  arenaHost: string
}

class ArenasScreen extends React.Component<Props, ReactState> {

  public state = { arenas: [], showMonstersSelection: false, arenaHost: "" }

  public componentDidMount() {
    this.refresh()
  }

  public render() {

    const { identity, myMonsters } = this.props
    const { battle_max_arenas } = this.props.globalConfig
    const { arenas, showMonstersSelection } = this.state

    const arenasCounter =
      <ArenasCounter
        availableArenas={battle_max_arenas - arenas.length}
        maxArenas={battle_max_arenas} />

    const currentBattle = getCurrentBattle(arenas, identity)

    const availableMonsters = getAvailableMonstersToBattle(myMonsters)

    const battleButton =
      currentBattle ?
      <Link className="button is-warning" to={`/arenas/${currentBattle.host}`}>
        Reconnect to Battle
      </Link> :
      identity ?
      <a className="button is-success"
        onClick={() => this.setState({showMonstersSelection: true, arenaHost: ""})}>
        Create a Battle
      </a> :
      null

    const availableToBattle = !!identity && !currentBattle
      && availableMonsters.length > 0

    return (
      <PageContainer>
        <TitleBar
          title="Welcome to the Arena!"
          menu={[arenasCounter, battleButton]} />
        {arenas.map((arena: Arena, index: number) =>
          <BattleCard
            key={index}
            myBattle={!!currentBattle && currentBattle.host === arena.host}
            availableToBattle={availableToBattle}
            joinBattle={() => this.setState({showMonstersSelection: true, arenaHost: arena.host})}
            arena={arena} />
        )}

        { showMonstersSelection &&
        <BattleMonsterPickModal closeModal={this.confirmSelection} />
        }

      </PageContainer>
    )
  }

  private refresh = async () => {
    const { dispatchPushNotification } = this.props

    try {
      const arenas = await loadArenas()
      this.setState({arenas})
    } catch (error) {
      console.error("Fail to load Arenas", error)
      dispatchPushNotification("Fail to load Arenas")
    }
  }

  private confirmSelection = async (pets: number[]) => {
    console.info("selected pets >>> ", pets)

    const { arenaHost } = this.state
    const { dispatchPushNotification } = this.props

    if (pets && pets.length) {

      if (pets.length > 1) { // TODO: current 1v1 mode only
        return dispatchPushNotification("You can only select 1 monster", NOTIFICATION_ERROR)
      } else if (arenaHost) {
        this.doJoinBattle(arenaHost, pets)
      } else {
        this.doCreateBattle(pets)
      }

    } else {
      this.setState({showMonstersSelection: false, arenaHost: ""})
    }
  }

  private doCreateBattle = async (pets: number[]) => {
    const { scatter, dispatchPushNotification, history, identity } = this.props
    createBattle(scatter, 1, pets)
      .then(() => {
        setTimeout(() => history.push(`/arenas/${identity}`), 500)
        dispatchPushNotification("Joining Created Battle...", NOTIFICATION_SUCCESS)
      })
      .catch((error: any) => {
        console.error("Fail to create battle", error)
        dispatchPushNotification("Fail to Create Battle", NOTIFICATION_ERROR)
      })
  }

  private doJoinBattle = async (host: string, pets: number[]) => {
    const { scatter, dispatchPushNotification, history } = this.props
    joinBattle(scatter, host, pets)
      .then(() => {
        setTimeout(() => history.push(`/arenas/${host}`), 500)
        dispatchPushNotification("Joining Battle...", NOTIFICATION_SUCCESS)
      })
      .catch((error: any) => {
        console.error("Fail to join battle", error)
        dispatchPushNotification("Fail to Join Battle", NOTIFICATION_ERROR)
      })
  }
}

const ArenasCounter = ({availableArenas, maxArenas}: any) => (
  <span>
    Available Arenas: {availableArenas}/{maxArenas}
  </span>
)

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
    scatter: state.scatter,
    identity: getEosAccount(state.identity),
    myMonsters: state.myMonsters
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(ArenasScreen)