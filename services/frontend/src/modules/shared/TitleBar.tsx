import * as React from "react"

const TitleBar = (props: any) => (
  <div className="content">
    <div className={`level ${props.notMobile ? "" : "is-mobile"}`}>
      <div className="level-left">
        <div className="level-item has-text-centered">
          {props.intro ? (
            <div>
              <div className="intro-title">{props.intro}</div>
              <h1 className="title extra" data-text={props.title}>
                {props.title}
              </h1>
            </div>
          ) : (
            <h1 className="title" data-text={props.title}>
              {props.title}
            </h1>
          )}
        </div>
      </div>
      <hr className="is-hidden-tablet" />
      <div className="level-right">
        {props.menu &&
          props.menu.map((item: any, index: number) => (
            <div className="level-item" key={index}>
              {item}
            </div>
          ))}
      </div>
    </div>
    <hr className="is-hidden-mobile" />
  </div>
)

export default TitleBar
