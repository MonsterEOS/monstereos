import * as React from "react"
import { State } from "../../store"
import { connect } from "react-redux"
import Modal from "../shared/Modal"
import { getAvailableMonstersToBattle } from "./battles"
import MonsterCard from "../monsters/MonsterCard"
import { MonsterProps } from "../monsters/monsters"

interface Props {
  closeModal: (monsters?: number[]) => void,
  myMonsters: MonsterProps[]
}

interface ReactState {
  selectedMonsters: number[],
  monstersOffset: number,
  monstersLimit: number,
}

class BattleMonsterPickModal extends React.Component<Props, {}> {

  public state: ReactState = {
    selectedMonsters: [],
    monstersOffset: 0,
    monstersLimit: 6,
  }

  public render() {

    const { closeModal, myMonsters } = this.props
    const { monstersOffset, monstersLimit } = this.state

    const monsters = getAvailableMonstersToBattle(myMonsters)

    const footerButtons = [
      <a
        key="cancel"
        className="button is-danger"
        onClick={() => closeModal()}>
        Cancel
      </a>,
      <a
        key="submit"
        className="button"
        onClick={this.handleSubmit}>
        Submit
      </a>
    ]

    return (
      <Modal
        title="Pick your Monster to Battle"
        close={() => closeModal()}
        footerButtons={footerButtons}>
        <p className="has-text-info"><small><em>Only Alive, Awake and Fed Monsters with more than 30% Energy can Join a Battle</em></small></p>
        <div className="columns is-multiline">
          {monsters.slice(monstersOffset, monstersOffset + monstersLimit)
            .map(this.renderMonsterCard)}
        </div>
        {monsters.length < 1 && <p className="has-text-danger">Ooops... Looks like you have no Monsters available to battle</p>}

        {this.renderPagination(monstersOffset, monstersLimit, monsters.length)}
      </Modal>
    )
  }

  private renderPagination = (
    offset: number,
    limit: number,
    total: number) => {

    if (offset + limit < total || offset > 0) {
      return <div className="has-margin-bottom">
          <div className="is-pulled-right">
            {offset > 0 &&
              <a className="button has-margin-right"
                onClick={() => this.setState({monstersOffset: offset - limit})}>
                Back
              </a>}
            {offset + limit < total &&
              <a className="button"
                onClick={() => this.setState({monstersOffset: offset + limit})}>
                Next</a>
            }
          </div>
          <div style={{clear: "both"}} />
        </div>
    } else {
      return null
    }
  }

  private renderMonsterCard = (monster: MonsterProps) => {
    const { selectedMonsters } = this.state

    const isSelected = selectedMonsters.indexOf(monster.id) >= 0

    const customActions = [
      {
        label: isSelected ? "Unselect Monster" : "Select Monster",
        action: () => this.handleMonsterSelection(monster.id)
      }
    ]

    return <MonsterCard
      key={monster.id}
      customActions={customActions}
      monster={monster}
      selected={isSelected}
      halfSize
      hideActions
      hideLink />
  }

  private handleMonsterSelection = (id: number) => {
    const { selectedMonsters } = this.state

    console.info(id, selectedMonsters)

    const newSelection = selectedMonsters.indexOf(id) >= 0 ?
      // deselect monster
      selectedMonsters.filter((pet) => pet !== id)
      : // select monster
      selectedMonsters.concat(id)

    this.setState({selectedMonsters: newSelection})
  }

  private handleSubmit = () => {

    const { selectedMonsters } = this.state

    if (selectedMonsters.length) {
      this.props.closeModal(selectedMonsters)
    }
  }
}

const mapStateToProps = (state: State) => {
  return {
    myMonsters: state.myMonsters
  }
}

export default connect(mapStateToProps)(BattleMonsterPickModal)