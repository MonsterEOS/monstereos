import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification, GlobalConfig, NOTIFICATION_ERROR, NOTIFICATION_SUCCESS } from "../../store"
import { Link } from "react-router-dom"

import PageContainer from "../shared/PageContainer"
import { Arena, getCurrentBattle, getBattleText, isPlayerReady, BATTLE_PHASE_STARTING, BattleCommitment, EMPTY_REVEAL } from "./battles"
import { loadArenaByHost, leaveBattle, startBattle } from "../../utils/eos"
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

    const isConfirmed = isPlayerReady(arena, identity)
    const allowConfirmation = isMyBattle && !isConfirmed ?
      () => this.doStartBattle(arena.host) :
      null

    return (
      <PageContainer>
        <BattleHeader
          battleText={getBattleText(arena)}
          host={arena.host}
          isMyBattle={isMyBattle}
          allowConfirmation={allowConfirmation}
          allowLeaveBattle={allowLeaveBattle} />
        {arena.phase === BATTLE_PHASE_STARTING &&
        <BattleConfirmation
          commits={arena.commits} />
        }
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

  private doStartBattle = async (host: string) => {
    const { scatter, dispatchPushNotification } = this.props
    startBattle(scatter, host)
      .then(() => {
        setTimeout(this.refresh, 500)
        dispatchPushNotification("Ready to Battle!", NOTIFICATION_SUCCESS)
      })
      .catch((error: any) => {
        console.error("Fail to confirm battle", error)
        setTimeout(this.refresh, 500)
        dispatchPushNotification("Fail to confirm Battle", NOTIFICATION_ERROR)
      })
  }
}

const BattleHeader = ({
  battleText,
  host,
  allowLeaveBattle,
  allowConfirmation,
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
          { allowConfirmation &&
            <div className="level-item ">
              <a className="button is-success" onClick={allowConfirmation}>
                I'm Ready
              </a>
            </div>
          }
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
                Back to Arenas
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

const BattleConfirmation = ({commits}: any) => (
  <div className="content">
    <ul>
      {commits.map((commit: BattleCommitment) => (
        <li key={commit.player}>
          Player {commit.player} is
          {" "}
          <BattleConfirmationStatus reveal={commit.reveal} />
        </li>
      ))}
    </ul>
  </div>
)

const BattleConfirmationStatus = ({reveal}: any) => {
  return reveal.indexOf(EMPTY_REVEAL) < 0 ?
    <span className="has-text-success">READY</span> :
    <span className="has-text-danger">pending</span>
}

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