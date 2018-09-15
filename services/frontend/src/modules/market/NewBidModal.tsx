import * as React from "react"
import { State, pushNotification, NOTIFICATION_SUCCESS, NOTIFICATION_ERROR, NOTIFICATION_WARNING } from "../../store"
import { connect } from "react-redux"
import { trxPlaceBidMarket } from "../../utils/eos"
import Modal from "../shared/Modal"
import { MonsterProps } from "../monsters/monsters"

interface Props {
  closeModal: (doUpdate: boolean) => void,
  scatter: any,
  dispatchPushNotification: any,
  monsters: MonsterProps[],
  initialName?: string,
  initialMonster?: MonsterProps,
  initialAmount?: number
}

interface ReactState {
  monstername: string,
  amount: number,
  monster: MonsterProps | undefined
}

/**
 * Bid is Off for now due to monsters autocomplete.
 * no way to select all monsters in memory? demux to the rescue
 */
class NewBidModal extends React.Component<Props, {}> {

  public state: ReactState = { monstername: this.props.initialMonster ? this.props.initialMonster.name: "",
                                amount: this.props.initialAmount ? this.props.initialAmount : 0,
                                monster: this.props.initialMonster }

  public render() {

    const { closeModal, monsters } = this.props

    const { monstername, amount, monster } = this.state

    const footerButtons = [
      <button
        key="submit"
        className="button is-success"
        onClick={this.createBid}>
        Submit
      </button>,
      <button
        key="cancel"
        className="button is-light"
        onClick={() => closeModal(false)}>
        Cancel
      </button>
    ]

    const title =  this.props.initialMonster ? "Update Bid" : "Create a New Bid"

    return (
      <Modal
        title={title}
        close={() => closeModal(false)}
        footerButtons={footerButtons}>
        <div>
          <div className="field">
            <label className="label is-large">Monster Name</label>
            <div className="control has-icons-left has-icons-right">
              <datalist id="mymonsters">
                {monsters.map((m) =>
                    <option key={m.name} value={m.name} />
                )}
              </datalist>
              <input
                className="input is-large"
                placeholder="Bubble"
                type="text"
                list="mymonsters"
                onChange={this.handleChangeMonster}
                value={monstername} />
              <span className="icon is-left">
                <i className="fa fa-paw" />
              </span>
              {monster && <span className="label">
                #{monster.id}
              </span>}
            </div>
          </div>
          <div className="field">
            <label className="label is-large">Value in EOS</label>
            <div className="control has-icons-left has-icons-right">
              <input
                className="input is-large"
                placeholder="0.0000"
                type="number"
                min="0.0000"
                step="0.0001"
                onChange={this.handleChangeValue}
                value={amount / 10000.0}/>
              <span className="icon is-left">
                <i className="fa fa-money" />
              </span>
            </div>
          </div>
        </div>
      </Modal>
    )
  }

  private handleChangeMonster = (event: any) => {
    const monsterName = event.target.value
    const {dispatchPushNotification, monsters} = this.props
    const monstersWithName = monsters.filter((monster:MonsterProps) => monster.name === monsterName)

    if (monstersWithName.length > 0) {
      if (monstersWithName.length > 1) {
        dispatchPushNotification(`More than one monster found with this name. Using the first one`, NOTIFICATION_WARNING)
      }
      // tslint:disable-next-line:no-console
      console.log("monsters found:" + monstersWithName)
      this.setState({monstername:monsterName,
        monster: monstersWithName[0]})
    } else {
      this.setState({monstername:monsterName,
        monster: undefined})
    }
  }

  private handleChangeValue = (event: any) => {
    if (event.target.value) {
      this.setState({amount: Math.floor(event.target.value * 10000.0)})
    }
  }

  private createBid = () => {
    const { scatter, closeModal, dispatchPushNotification } = this.props
    const { amount, monster } = this.state

    if (!monster) {
      return dispatchPushNotification(`Monster is required to make a bid`, NOTIFICATION_ERROR)
    }
    if (amount && amount < 0 ) {
      return dispatchPushNotification(`Invalid amount for offer`, NOTIFICATION_ERROR)
    }
    trxPlaceBidMarket(scatter, monster.id, amount)
      .then((res: any) => {
        console.info(`Bid for pet ${monster.id} was created successfully`, res)
        dispatchPushNotification(`Bid for ${monster.name} was created successfully`, NOTIFICATION_SUCCESS)
        closeModal(true)
      }).catch((err: any) => {
        dispatchPushNotification(`Fail to place a bid for ${monster.name} ${err.eosError}`, NOTIFICATION_ERROR)
      })
  }
}

const mapStateToProps = (state: State) => {
  // const eosAccount = getEosAccount(state.scatter.identity)
  return {
    scatter: state.scatter,
    monsters: state.myMonsters // state.monsters.filter((m:MonsterProps) => m.owner !== eosAccount)
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(NewBidModal)