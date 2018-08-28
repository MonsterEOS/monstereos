import * as React from "react"
import { State, pushNotification, NOTIFICATION_SUCCESS, NOTIFICATION_ERROR } from "../../store"
import { connect } from "react-redux"
import { trxCreatePet } from "../../utils/eos" // , e2TrxCreatePet } from "../../utils/eos"
import Modal from "../shared/Modal"

interface Props {
  closeModal: (doUpdate: boolean) => void,
  scatter: any,
  dispatchPushNotification: any
}

interface ReactState {
  name: string
}

class NewMonsterModal extends React.Component<Props, {}> {

  public state: ReactState = { name: "" }

  public render() {

    const { closeModal } = this.props

    const { name } = this.state

    const footerButtons = [
      <button
        key="submit"
        className="button is-success"
        onClick={this.createPet}>
        Submit
      </button>,
      <button
        key="cancel"
        className="button is-light"
        onClick={() => closeModal(false)}>
        Cancel
      </button>
    ]

    return (
      <Modal
        title="Create a New Monster"
        close={() => closeModal(false)}
        footerButtons={footerButtons}>
        <div className="field">
          <label className="label is-large">New Monster Name</label>
          <div className="control has-icons-left has-icons-right">
            <input
              className="input is-large"
              placeholder="Pikachu"
              type="text"
              onChange={this.handleChangeName}
              value={name} />
            <span className="icon is-left">
              <i className="fa fa-paw" />
            </span>
          </div>
        </div>
      </Modal>
    )
  }

  private handleChangeName = (event: any) => {
    this.setState({name: event.target.value})
  }

  private createPet = () => {
    const { scatter, closeModal, dispatchPushNotification } = this.props
    const { name } = this.state

    if (!name) {
      return dispatchPushNotification(`Name is required to create a Monster`, NOTIFICATION_ERROR)
    }

    // playing with EOSJS2
    const trx = trxCreatePet

    trx(scatter, name)
      .then((res: any) => {
        console.info(`Pet ${name} created successfully`, res)
        dispatchPushNotification(`Pet ${name} created successfully`, NOTIFICATION_SUCCESS)
        closeModal(true)
      }).catch((err: any) => {
        console.error(`Fail to create ${name}`, err)
        dispatchPushNotification(`Fail to create ${name}`, NOTIFICATION_ERROR)
      })
  }
}

const mapStateToProps = (state: State) => {
  return {
    scatter: state.scatter
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(NewMonsterModal)