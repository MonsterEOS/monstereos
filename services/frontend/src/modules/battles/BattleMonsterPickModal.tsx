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
  selectedMonsters: number[]
}

class BattleMonsterPickModal extends React.Component<Props, {}> {

  public state: ReactState = { selectedMonsters: [] }

  public render() {

    const { closeModal, myMonsters } = this.props

    const { selectedMonsters } = this.state

    const monsters = getAvailableMonstersToBattle(myMonsters)

    const footerButtons = [
      <button
        key="submit"
        className="button is-success"
        onClick={() => closeModal(selectedMonsters)}>
        Submit
      </button>,
      <button
        key="cancel"
        className="button is-light"
        onClick={() => closeModal()}>
        Cancel
      </button>
    ]

    return (
      <Modal
        title="Pick your Monster to Battle"
        close={() => closeModal()}
        footerButtons={footerButtons}>
        {monsters.map((monster) => {

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
            hideActions
            hideLink />
        })}

      </Modal>
    )
  }

  private handleMonsterSelection = (id: number) => {
    const { selectedMonsters } = this.state

    const newSelection = selectedMonsters.indexOf(id) >= 0 ?
      // deselect monster
      selectedMonsters.filter((pet) => pet !== id)
      : // select monster
      selectedMonsters.concat(id)

    this.setState({selectMonsters: newSelection})
  }
}

const mapStateToProps = (state: State) => {
  return {
    myMonsters: state.myMonsters
  }
}

export default connect(mapStateToProps)(BattleMonsterPickModal)