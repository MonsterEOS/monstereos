import * as React from "react"
import {
  State,
  pushNotification,
  NOTIFICATION_SUCCESS,
  NOTIFICATION_ERROR,
} from "../../store"
import { connect } from "react-redux"
import { trxOrderPetMarket } from "../../utils/eos"
import Modal from "../shared/Modal"
import { MonsterProps } from "../monsters/monsters"

interface Props {
  closeModal: (doUpdate: boolean) => void
  scatter: any
  dispatchPushNotification: any
  monsters: MonsterProps[]
  initialName?: string
  initialMonster?: MonsterProps
  initialAmount?: number
}

interface ReactState {
  name: string
  monstername: string
  amount: number
  monster: MonsterProps | undefined
  suggestedMonsters: MonsterProps[]
}

class NewOrderModal extends React.Component<Props, {}> {
  public state: ReactState = {
    name: this.props.initialName ? this.props.initialName : "",
    monstername: this.props.initialMonster
      ? this.props.initialMonster.name
      : "",
    amount: this.props.initialAmount ? this.props.initialAmount : 0,
    monster: this.props.initialMonster,
    suggestedMonsters: [],
  }

  public render() {
    const { closeModal, monsters } = this.props

    const { name, monster, amount } = this.state

    const footerButtons = [
      <a
        key="cancel"
        className="button is-danger"
        onClick={() => closeModal(false)}
      >
        Cancel
      </a>,
      <a key="submit" className="button" onClick={this.createOrder}>
        Submit
      </a>,
    ]

    const title = this.props.initialMonster
      ? "Update Order"
      : "Create a New Sell Order"

    return (
      <Modal
        title={title}
        close={() => closeModal(false)}
        footerButtons={footerButtons}
      >
        <div>
          <div className="field">
            <label className="label">Monster Name</label>
            <div className="control has-icons-left">
              <div className="select is-fullwidth">
                <select
                  className="is-large"
                  onChange={this.handleChangeMonster}
                  value={monster ? monster.id : ""}
                >
                  <option value="">
                    Please select the Monster you want to Sell
                  </option>
                  {monsters.map(opt => (
                    <option key={opt.id} value={opt.id}>
                      {opt.name} (#
                      {opt.id})
                    </option>
                  ))}
                </select>
              </div>
              <span className="icon is-left">
                <i className="fa fa-paw" />
              </span>
            </div>
          </div>
          <div className="field">
            <label className="label">Value in EOS</label>
            <div className="control has-icons-left has-icons-right">
              <input
                className="input is-large"
                placeholder="0.0000"
                type="number"
                min="0.0000"
                step="0.0001"
                onChange={this.handleChangeValue}
                defaultValue={amount ? Number(amount).toFixed(4) : ""}
              />
              <span className="icon is-left">
                <i className="fa fa-money" />
              </span>
            </div>
          </div>
          <div className="field">
            <label className="label">Propose to New Owner (optional)</label>
            <div className="control has-icons-left has-icons-right">
              <input
                className="input is-large"
                placeholder="friedgermuef"
                type="text"
                onChange={this.handleChangeName}
                value={name}
              />
              <span className="icon is-left">
                <i className="fa fa-user" />
              </span>
            </div>
          </div>
        </div>
      </Modal>
    )
  }

  private handleChangeName = (event: any) => {
    this.setState({ name: event.target.value })
  }

  private handleChangeMonster = (event: any) => {
    const { monsters } = this.props

    const monster = monsters.find(m => m.id === Number(event.target.value))

    if (monster) {
      this.setState({ monster })
    }
  }

  private handleChangeValue = (event: any) => {
    if (event.target.value) {
      this.setState({ amount: Number(event.target.value).toFixed(4) })
    }
  }

  private createOrder = () => {
    const { scatter, closeModal, dispatchPushNotification } = this.props
    const { name, amount, monster } = this.state

    if (!monster) {
      return dispatchPushNotification(
        `Monster is required to make an offer`,
        NOTIFICATION_ERROR,
      )
    }

    if (amount && amount < 0) {
      return dispatchPushNotification(
        `Invalid amount for offer`,
        NOTIFICATION_ERROR,
      )
    }

    trxOrderPetMarket(scatter, monster.id, name, amount)
      .then((res: any) => {
        console.info(
          `Pet ${monster.id} was offered to ${name} successfully`,
          res,
        )
        dispatchPushNotification(
          `Pet ${monster.name} was offered to ${name} successfully`,
          NOTIFICATION_SUCCESS,
        )
        closeModal(true)
      })
      .catch((err: any) => {
        dispatchPushNotification(
          `Fail to offer ${monster.name} ${err.eosError}`,
          NOTIFICATION_ERROR,
        )
      })
  }
}

const mapStateToProps = (state: State) => {
  return {
    scatter: state.scatter,
    monsters: state.myMonsters,
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification,
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(NewOrderModal)
