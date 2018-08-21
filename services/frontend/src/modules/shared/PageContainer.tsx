import * as React from "react"

const PageContainer = (props: any) => (
  <section className="section">
    <div className="container">
      <div className="content">
        {props.children}
      </div>
    </div>
  </section>
)

export default PageContainer