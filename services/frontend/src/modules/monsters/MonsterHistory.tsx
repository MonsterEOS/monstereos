import * as React from "react"
import * as moment from "moment"
import { MonsterAction } from "./monsters"
import MonsterActionLabel from "./MonsterActionLabel"
import TransactionLink from "../shared/TransactionLink"

interface MonsterHistoryProps {
  actions: MonsterAction[]
}

const MonsterHistory = (props: MonsterHistoryProps) => (
  <React.Fragment>
    <h3>Monster History</h3>
    <table>
      <thead>
        <tr>
          <th>Time</th>
          <th>Action</th>
          <th className="is-hidden-mobile">Author</th>
          <th className="is-hidden-mobile">Transaction</th>
        </tr>
      </thead>
      <tbody>
      { console.info(props.actions) }
      {props.actions.map((action: MonsterAction, index: number) => (
        <tr key={index}>
          <td>{moment(action.createdAt).format("MMMM, D YYYY @ h:mm a")}</td>
          <td><MonsterActionLabel action={action.action} /></td>
          <td className="is-hidden-mobile">{action.author}</td>
          <td className="is-hidden-mobile">
            <TransactionLink id={action.transaction} />
          </td>
        </tr>
      ))}
      </tbody>
    </table>
  </React.Fragment>
)

export default MonsterHistory