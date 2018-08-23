import * as React from "react"
import { State } from "../../store"
import { connect } from "react-redux"
import { trxCreatePet } from "../../utils/eos" // , e2TrxCreatePet } from "../../utils/eos"
import Modal from "../shared/Modal"

interface Props {
  closeModal: (doUpdate: boolean) => void,
  scatter: any,
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
    const { scatter, closeModal } = this.props
    const { name } = this.state

    if (!name) {
      return alert("Name is required to create a Monster")
    }

    // playing with EOSJS2
    const trx = trxCreatePet // false ? e2TrxCreatePet : trxCreatePet

    trx(scatter, name)
      .then((res: any) => {
        console.info(`Pet ${name} created successfully`, res)
        alert(`Pet ${name} created successfully`)
        closeModal(true)
      }).catch((err: any) => {
        console.error(`Fail to create ${name}`, err)
        alert(`Fail to create ${name}`)
      })
  }
}

const mapStateToProps = (state: State) => {
  return {
    scatter: state.scatter
  }
}

export default connect(mapStateToProps)(NewMonsterModal)