import * as React from "react"
import PageHero from "../shared/PageHero"

const PAGE_WELCOME = process.env.REACT_APP_PAGE_WELCOME || "A Monster Tamagotchi and Battle game for EOS blockchain! :)"

const HomeScreen = (props: any) => (
  <PageHero>
    <div className="columns">
      <div className="column">
        <figure className="image">
          <img alt="Tamagotchi Monsters" src="/images/monsters/monster-105.png" />
        </figure>
      </div>
      <div className="column">
        <h1 className="title logo">
          {PAGE_WELCOME}
        </h1>
      </div>
    </div>
  </PageHero>
)

export default HomeScreen