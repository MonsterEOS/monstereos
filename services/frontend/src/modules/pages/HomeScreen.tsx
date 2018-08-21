import * as React from "react"
import PageHero from "../shared/PageHero"

import mainMonster from "../../assets/images/monsters/monster-105.png"

const HomeScreen = (props: any) => (
  <PageHero>
    <div className="columns">
      <div className="column">
        <figure className="image">
          <img alt="Tamagotchi Monsters" src={mainMonster} />
        </figure>
      </div>
      <div className="column">
        <h1 className="title logo">
          I'm a Monster Tamagotchi alike game for EOS blockchain! :)
        </h1>
      </div>
    </div>
  </PageHero>
)

export default HomeScreen