import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification, GlobalConfig, NOTIFICATION_ERROR } from "../../store"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"
import { Arena, getCurrentBattle } from "./battles"
import { loadArenas, createBattle, joinBattle } from "../../utils/eos"
import BattleCard from "./BattleCard"
import { getEosAccount } from "../../utils/scatter"

interface Props {
  globalConfig: GlobalConfig,
  dispatchPushNotification: any,
  scatter: any,
  identity: string,
}

interface ReactState {
  arenas: Arena[]
}

class ArenasScreen extends React.Component<Props, ReactState> {

  public state = { arenas: [] }

  public componentDidMount() {
    this.refresh()
  }

  public render() {

    const { identity } = this.props
    const { battle_max_arenas, battle_busy_arenas } = this.props.globalConfig
    const { arenas } = this.state

    const arenasCounter =
      <ArenasCounter
        availableArenas={battle_max_arenas - battle_busy_arenas}
        maxArenas={battle_max_arenas} />

    const currentBattle = getCurrentBattle(arenas, identity)

    const battleButton =
      currentBattle ?
      <Link className="button is-warning" to={`/arenas/${currentBattle.host}`}>
        Reconnect to Battle
      </Link> :
      <a className="button is-success" onClick={this.doCreateBattle}>
        Create a Battle
      </a>

    return (
      <PageContainer>
        <TitleBar
          title="Welcome to the Arena!"
          menu={[arenasCounter, battleButton]} />
        {arenas.map((arena: Arena, index: number) =>
          <BattleCard
            key={index}
            myBattle={currentBattle !== null}
            availableToBattle={currentBattle === null}
            joinBattle={() => this.doJoinBattle(arena.host)}
            arena={arena} />
        )}
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

  private doCreateBattle = async () => {
    const { scatter, dispatchPushNotification } = this.props
    createBattle(scatter, 1)
      .then(() => setTimeout(this.refresh, 500))
      .catch((error: any) => {
        console.error("Fail to create battle", error)
        dispatchPushNotification("Fail to Create Battle", NOTIFICATION_ERROR)
      })
  }

  private doJoinBattle = async (host: string) => {
    const { scatter, dispatchPushNotification } = this.props
    joinBattle(scatter, host)
      .then(() => setTimeout(this.refresh, 500))
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
    identity: getEosAccount(state.identity)
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(ArenasScreen)