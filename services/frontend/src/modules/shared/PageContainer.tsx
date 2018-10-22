import * as React from "react"

const PageContainer = (props: any) => (
  <section
    className="section page"
    style={props.isShort ? { minHeight: 1 } : {}}
  >
    <div className="container">
      <div className="content">{props.children}</div>
    </div>
  </section>
)

export default PageContainer
