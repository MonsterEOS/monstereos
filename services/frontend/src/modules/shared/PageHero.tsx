import * as React from "react"

const PAGE_HERO_COLOR = process.env.REACT_APP_PAGE_HERO_COLOR || "is-info"

const PageHero = (props: any) => (
  <section className={`hero ${PAGE_HERO_COLOR} is-medium`}>
    <div className="hero-body">
      <div className="container">
        {props.children}
      </div>
    </div>
  </section>
)

export default PageHero