import * as React from "react"

interface Props {
  action: string
}

const MonsterActionLabel = (props: Props) => {

  const label = { icon: "", text: "", class: "" }

  switch(props.action) {
    case "feedpet":
      label.icon = "fa-cutlery"
      label.class = "is-primary"
      label.text = "Feed"
      break
    case "bedpet":
      label.icon = "fa-moon-o"
      label.class = "is-dark"
      label.text = "Sleep"
      break
    case "awakepet":
      label.icon = "fa-sun-o"
      label.class = "is-warning"
      label.text = "Wake up"
      break
    case "createpet":
      label.icon = "fa-birthday-cake"
      label.class = "is-info"
      label.text = "Birth"
      break
    default:
      label.icon = "fa-question-circle"
      label.class = "is-light"
      label.text = "Unknown"
  }

  return (
    <React.Fragment>
      <span className={`tag ${label.class}`} style={{width: 150, fontSize: 16}}>
        <i className={`fa ${label.icon}`} style={{marginRight: 5}} />
        {label.text}
      </span>
    </React.Fragment>
  )
}

export default MonsterActionLabel