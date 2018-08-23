import * as React from "react"

const TitleBar = (props: any) => (
  <div className="content">
    <div className="level is-mobile">
      <div className="level-left">
        <div className="level-item">
          <h1 className="title">{props.title}</h1>
        </div>
      </div>
      <div className="level-right">
        {props.menu && props.menu.map((item: any, index: number) => (
          <div className="level-item" key={index}>{item}</div>
        ))}
      </div>
    </div>
    <p>{" "}</p>
  </div>
)

export default TitleBar