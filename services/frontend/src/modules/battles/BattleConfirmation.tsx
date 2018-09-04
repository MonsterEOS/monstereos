import * as React from "react"
import { BattleCommitment } from "./battles"

export const BattleConfirmation = ({commits}: any) => (
  <div className="content">
    <ul>
      {commits.map((commit: BattleCommitment) => (
        <li key={commit.player}>
          Player {commit.player} is
          {" "}
          <BattleConfirmationStatus commit={commit} />
        </li>
      ))}
    </ul>
  </div>
)

export const BattleConfirmationStatus = ({commit}: any) => {
  return commit.randoms.length > 0 ?
    <span className="has-text-success">READY</span> :
    <span className="has-text-danger">pending</span>
}

export default BattleConfirmation