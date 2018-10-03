import * as React from "react"
import {setNetwork, State} from "../../store"
import {connect} from "react-redux"
import Modal from "../shared/Modal"
import {Network, networks} from "./networks"

interface Props {
  closeModal: (doUpdate: boolean) => void,
  dispatchSetNetwork: any,
  networkId: string
}

interface ReactState {
  networkList: Network[],
  id: string
}

class NetworkModal extends React.Component<Props, ReactState> {

  public state: ReactState = {
    networkList: networks,
    id: "cypherglasss"
  }

  public componentDidMount() {
    this.getNetwork()
  }

  public render() {

    const {closeModal } = this.props

    const {networkList, id} = this.state

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
        onClick={this.setNetwork}>
        Submit
      </a>
    ]

    return (
      <Modal
        title="Select the Network"
        close={() => closeModal(false)}
        footerButtons={footerButtons}>
        <div>
          <div className="field">
            <label className="label">Network Name</label>
            <div className="control has-icons-left">
              <div className="select is-fullwidth">
                <select
                  className="is-large"
                  onChange={this.handleChangeNetwork}
                  value={id}>
                  {networkList.map((opt) =>
                    <option
                      key={opt.id}
                      value={opt.id}>{opt.name} - Latency: {opt.ping}ms</option>
                  )}
                </select>
              </div>
              <span className="icon is-left"><i className="fa fa-server"/></span>
            </div>
          </div>
        </div>
      </Modal>
    )
  }

  private getNetwork = async  () => {

    const { networkList } = this.state

    const initialTimeStamp = Date.now()

    networkList.forEach(network => {
      fetch(network.protocol + "://" +  network.host + ":" + network.port + "/v1/chain/get_info")
        .then(res => {
          network.ping = Date.now() - initialTimeStamp
          this.setNetworkState(networkList)
        })
        .catch(e => {
          network.ping = 9999
          this.setNetworkState(networkList)
        })

    })

    if (this.props.networkId){
      this.setState({id: this.props.networkId})
    }

  }

  private setNetworkState = (networkList: Network[]) => {
    networkList.sort((a, b) => {
      return a.ping - b.ping
    })
    this.setState({networkList})
  }

  private handleChangeNetwork = (event: any) => {
    this.setState({id: event.target.value})
  }

  private setNetwork = () => {
    localStorage.setItem("myNetwork", this.state.id)
    location.reload()
    // const {dispatchSetNetwork} = this.props
    // dispatchSetNetwork(this.state.id)
  }

}


const mapStateToProps = (state: State) => {
  return {
    networkId: state.myNetwork,
  }
}

const mapDispatchToProps = {
  dispatchSetNetwork: setNetwork
}

export default connect(mapStateToProps, mapDispatchToProps)(NetworkModal)