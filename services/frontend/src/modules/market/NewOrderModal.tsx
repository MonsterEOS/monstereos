import * as React from "react"
import { State, pushNotification, NOTIFICATION_SUCCESS, NOTIFICATION_ERROR, NOTIFICATION_WARNING } from "../../store"
import { connect } from "react-redux"
import { trxOrderPetMarket } from "../../utils/eos"
import Modal from "../shared/Modal"
import { MonsterProps, monsterImageSrc } from "../monsters/monsters"
import * as AutoSuggest from "react-autosuggest"

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
  name: string,
  monstername: string,
  amount: number,
  monster: MonsterProps | undefined
  suggestedMonsters: MonsterProps[]
}

class NewOrderModal extends React.Component<Props, {}> {

  public state: ReactState = {
    name: this.props.initialName ? this.props.initialName: "",
    monstername: this.props.initialMonster ? this.props.initialMonster.name: "",
    amount: this.props.initialAmount ? this.props.initialAmount : 0,
    monster: this.props.initialMonster,
    suggestedMonsters: []
  }

  public render() {

    const { closeModal } = this.props

    const { name, monstername, monster, amount, suggestedMonsters } = this.state

    const footerButtons = [
      <button
        key="submit"
        className="button is-success"
        onClick={this.createOrder}>
        Submit
      </button>,
      <button
        key="cancel"
        className="button is-light"
        onClick={() => closeModal(false)}>
        Cancel
      </button>
    ]

    const title =  this.props.initialMonster ? "Update Order" : "Create a New Sell Order"

    const inputProps = {
      placeholder: "Bubble",
      value:monstername,
      onChange: this.handleChangeMonster
    }

    const theme = {
      container:"is-large",
      input:"input is-large"
    }

    return (
      <Modal
        title={title}
        close={() => closeModal(false)}
        footerButtons={footerButtons}>
        <div>
          <div className="field">
            <label className="label is-large">Monster Name</label>             
            <div className="control has-icons-left has-icons-right">                    
              <AutoSuggest theme={theme}
                  suggestions={suggestedMonsters}
                  onSuggestionsFetchRequested={this.onSuggestionsFetchRequested}
                  onSuggestionsClearRequested={this.onSuggestionsClearRequested}
                  getSuggestionValue={this.getMonsterSuggestionValue}
                  renderSuggestion={this.renderMonsterSuggestion}
                  inputProps={inputProps}
                />
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
                defaultValue={amount ? Number(amount).toFixed(4) : ""}/>
              <span className="icon is-left">
                <i className="fa fa-money" />
              </span>
            </div>
          </div>
          <div className="field">
            <label className="label is-large">Propose to New Owner (optional)</label>
            <div className="control has-icons-left has-icons-right">
              <input
                className="input is-large"
                placeholder="friedgermuef"
                type="text"
                onChange={this.handleChangeName}
                value={name} />
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
    this.setState({name: event.target.value})
  }

  private handleChangeMonster = (event: any) => {
    const monsterName = event.target.value
    // tslint:disable-next-line:no-console
    console.log(" name " + monsterName)
    const {dispatchPushNotification, monsters} = this.props
    const monstersWithName = monsters.filter((monster:MonsterProps) => monsterName && monster.name.toLowerCase() === monsterName.toLowerCase())

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
      this.setState({amount: Number(event.target.value).toFixed(4)})
    }
  }

  private createOrder = () => {
    const { scatter, closeModal, dispatchPushNotification } = this.props
    const { name, amount, monster } = this.state

    if (!monster) {
      return dispatchPushNotification(`Monster is required to make an offer`, NOTIFICATION_ERROR)
    }

    if (amount && amount < 0 ) {
      return dispatchPushNotification(`Invalid amount for offer`, NOTIFICATION_ERROR)
    }

    trxOrderPetMarket(scatter, monster.id, name, amount)
      .then((res: any) => {
        console.info(`Pet ${monster.id} was offered to ${name} successfully`, res)
        dispatchPushNotification(`Pet ${monster.name} was offered to ${name} successfully`, NOTIFICATION_SUCCESS)
        closeModal(true)
      }).catch((err: any) => {
        console.error(`Fail to offer monster ${monster.id}`, err)
        dispatchPushNotification(`Fail to offer ${monster.name}`, NOTIFICATION_ERROR)
      })
  }

  private getMonsterSuggestionValue = (monster:MonsterProps) => monster.name
  
  private renderMonsterSuggestion = (monster:MonsterProps) => {
    return (
    <div className="has-icons-left control">
          <img src={monsterImageSrc(monster.type)} className="icon is-left"/>
          <label className="label">{monster.name}</label>
    </div>
    )
  }

  private getSuggestedMonsters = (monsterName:string) => {
    if (monsterName && monsterName.length > 1) {
      const {monsters} = this.props
      return monsters.filter((monster) => monster.name.toLowerCase().indexOf(monsterName) >= 0)
    } else {
      return []
    }
  }
  private onSuggestionsFetchRequested = ( event:AutoSuggest.SuggestionsFetchRequestedParams  ) => {
    this.setState({
      suggestedMonsters: this.getSuggestedMonsters(event.value.toLowerCase())
    })
  }

  private onSuggestionsClearRequested = () => {
    this.setState({
      suggestedMonsters:[]
    })
  }
}
  

const mapStateToProps = (state: State) => {
  return {
    scatter: state.scatter,
    monsters: state.myMonsters
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(NewOrderModal)