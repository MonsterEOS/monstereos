import * as React from "react"

interface Props {
  id: string
}

const TransactionLink = (props: Props) => (
  <a
    href={`https://www.myeoskit.com/#/tx/${props.id}?dapp=monstereosio`}
    target="_blank"
  >
    {props.id.substring(0, 10)}
    ... <i className="fa fa-external-link" />
  </a>
)

export default TransactionLink
