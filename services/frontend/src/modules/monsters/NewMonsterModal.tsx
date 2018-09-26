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
      <a
        key="cancel"
        className="button is-danger"
        onClick={() => closeModal(false)}>
        Cancel
      </a>,
      <a
        key="submit"
        className="button"
        onClick={this.createPet}>
        Submit
      </a>
    ]

    return (
      <Modal
        title="New Monster"
        close={() => closeModal(false)}
        footerButtons={footerButtons}>
        <div className="field">
          <div className="control">
            <input
              className="input is-large"
              placeholder="New Monster Name"
              type="text"
              onChange={this.handleChangeName}
              value={name} />
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
        dispatchPushNotification(`Fail to create ${name} ${err.eosError}`, NOTIFICATION_ERROR)
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