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
  eosAccount: string
  myMonsters: MonsterProps[]
  globalConfig: any
  dispatchDoLoadMyMonsters: any
}

interface ReactState {
  showNewMonsterModal: boolean
  isLoading: boolean
  aliveOffset: number
  aliveLimit: number
  deadOffset: number
  deadLimit: number
}

class MyMonstersScreen extends React.Component<Props, ReactState> {
  public state = {
    showNewMonsterModal: false,
    isLoading: true,
    aliveOffset: 0,
    aliveLimit: 6,
    deadOffset: 0,
    deadLimit: 6,
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
      return (
        <PageContainer>
          <div>Ooopss... looks like you are not identified</div>
        </PageContainer>
      )
    }
  }

  private renderMonsters() {
    const { myMonsters, dispatchDoLoadMyMonsters } = this.props
    const {
      showNewMonsterModal,
      isLoading,
      aliveOffset,
      aliveLimit,
      deadOffset,
      deadLimit,
    } = this.state

    const subHeader = <small>You have {myMonsters.length} monsters</small>

    const newMonsterButton = (
      <a
        className="button is-success is-large"
        onClick={() => this.setState({ showNewMonsterModal: true })}
      >
        NEW MONSTER
      </a>
    )

    const aliveMonsters = myMonsters.filter((monster: any) => !monster.deathAt)
    const deadMonsters = myMonsters.filter((monster: any) => monster.deathAt)

    const refetchMonsters = () => {
      setTimeout(() => dispatchDoLoadMyMonsters(), 500)
    }

    const newMonsterClosure = (doRefetch: boolean) => {
      this.setState({ showNewMonsterModal: false })
      if (doRefetch) {
        refetchMonsters()
      }
    }

    return (
      <PageContainer>
        <TitleBar
          notMobile
          title="My Monsters"
          menu={[subHeader, newMonsterButton]}
        />
        {aliveMonsters && aliveMonsters.length ? (
          <MonstersList
            monsters={aliveMonsters.slice(
              aliveOffset,
              aliveOffset + aliveLimit,
            )}
            update={refetchMonsters}
          />
        ) : isLoading ? (
          <p>Loading Monsters...</p>
        ) : (
          <p>You currently have no living monsters.</p>
        )}

        {this.renderPagination(
          aliveOffset,
          aliveLimit,
          aliveMonsters.length,
          "alive",
        )}

        {deadMonsters &&
          deadMonsters.length > 0 && (
            <React.Fragment>
              <h3>My Dead Monsters</h3>
              <MonstersList
                monsters={deadMonsters.slice(
                  deadOffset,
                  deadOffset + deadLimit,
                )}
                update={refetchMonsters}
              />
              {this.renderPagination(
                deadOffset,
                deadLimit,
                deadMonsters.length,
                "dead",
              )}
            </React.Fragment>
          )}

        {showNewMonsterModal && (
          <NewMonsterModal closeModal={newMonsterClosure} />
        )}
      </PageContainer>
    )
  }

  private renderPagination = (
    offset: number,
    limit: number,
    total: number,
    type: string,
  ) => {
    console.info(type, offset, limit, total)

    if (offset + limit < total || offset > 0) {
      const prop = type + "Offset"

      const backObj = {}
      backObj[prop] = offset - limit

      const nextObj = {}
      nextObj[prop] = offset + limit

      return (
        <div className="has-margin-bottom">
          <div className="is-pulled-right">
            {offset > 0 && (
              <a
                className="button has-margin-right"
                onClick={() => this.setState(backObj)}
              >
                Back
              </a>
            )}
            {offset + limit < total && (
              <a className="button" onClick={() => this.setState(nextObj)}>
                Next
              </a>
            )}
          </div>
          <div style={{ clear: "both" }} />
        </div>
      )
    } else {
      return null
    }
  }

  private refresh = async () => {
    const { dispatchDoLoadMyMonsters } = this.props
    this.setState({ isLoading: true })

    console.info("fetching monsters")
    await dispatchDoLoadMyMonsters()
    console.info("monsters fetched")

    this.setState({ isLoading: false })

    // refresh monsters each minute
    this.refreshHandler = setTimeout(this.refresh, 60 * 1000)
  }
}

const MonstersList = ({ monsters, update }: any) => (
  <div className="columns is-multiline">
    {monsters.map((monster: any) => (
      <MonsterCard key={monster.id} monster={monster} requestUpdate={update} />
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
  dispatchDoLoadMyMonsters: doLoadMyMonsters,
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(MyMonstersScreen)
