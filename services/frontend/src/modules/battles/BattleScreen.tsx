import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification, GlobalConfig, NOTIFICATION_ERROR, NOTIFICATION_SUCCESS } from "../../store"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import { Arena, getCurrentBattle } from "./battles"
import { loadArenaByHost, leaveBattle } from "../../utils/eos"
import { getEosAccount } from "../../utils/scatter"

interface Props {
  globalConfig: GlobalConfig,
  dispatchPushNotification: any,
  scatter: any,
  match: any,
  history: any,
  identity: string,
}

interface ReactState {
  arena?: Arena
}

class BattleScreen extends React.Component<Props, ReactState> {

  public state = { arena: undefined }

  public componentDidMount() {
    this.refresh()
  }

  public render() {

    const { identity } = this.props
    const { arena: maybeArena } = this.state

    if (!maybeArena) {
      return (
        <span>
          <i className="fa fa-spin fa-spinner" /> Loading Battle....
        </span>
      )
    }

    const arena = maybeArena as Arena
    const currentBattle = getCurrentBattle([arena], identity)

    const isMyBattle = !!currentBattle

    const allowLeaveBattle = isMyBattle ?
      () => this.doLeaveBattle(arena.host) :
      null

    return (
      <PageContainer>
        <BattleHeader
            battleText="Joining phase: Waiting for players to join"
            host={arena.host}
            isMyBattle={isMyBattle}
            allowLeaveBattle={allowLeaveBattle} />
      </PageContainer>
    )
  }

  private refresh = async () => {
    const { dispatchPushNotification } = this.props
    const { match: {params: { host } } } = this.props

    try {
      const arena = await loadArenaByHost(host)
      this.setState({arena})
    } catch (error) {
      console.error("Fail to load Arena", error)
      dispatchPushNotification("Fail to load Arena")
    }
  }

  private doLeaveBattle = async (host: string) => {
    const { scatter, dispatchPushNotification, history } = this.props
    leaveBattle(scatter, host)
      .then(() => {
        setTimeout(() => history.push("/arenas"), 500)
        dispatchPushNotification("Leaving Battle Successfully...", NOTIFICATION_SUCCESS)
      })
      .catch((error: any) => {
        console.error("Fail to leave battle", error)
        dispatchPushNotification("Fail to Leave Battle", NOTIFICATION_ERROR)
      })
  }
}

const BattleHeader = ({
  battleText,
  host,
  allowLeaveBattle,
  isMyBattle
}: any) => (
  <div className="content">
    <div className="box">
      <div className="level">
        <div className="level-left">
          <div className="level-item">
            <h1 className="title">{host}'s Arena</h1>
          </div>
        </div>
        <div className="level-right">
          { allowLeaveBattle &&
            <div className="level-item">
              <a className="button is-danger" onClick={allowLeaveBattle}>
                Leave Battle
              </a>
            </div>
          }
          { !isMyBattle &&
            <div className="level-item">
              <Link to="/arenas">
                Back to Battles List
              </Link>
            </div>
          }
        </div>
      </div>
      <div className="level">
        <div className="level-left">
          <div className="level-item ">
            {battleText}
          </div>
        </div>
        <div className="level-right">
          &nbsp;
        </div>
      </div>
    </div>
  </div>
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

export default connect(mapStateToProps, mapDispatchToProps)(BattleScreen)