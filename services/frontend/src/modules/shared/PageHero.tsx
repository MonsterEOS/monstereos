import * as React from "react"

const PageHero = (props: any) => (
  <section className="hero is-info is-medium">
    <div className="hero-body">
      <div className="container">
        {props.children}
      </div>
    </div>
  </section>
)

export default PageHero