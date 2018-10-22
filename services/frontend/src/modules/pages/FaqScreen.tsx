import * as React from "react"
import PageContainer from "../shared/PageContainer"

const FaqScreen = (props: any) => (
  <PageContainer>
    <h1>Help</h1>
    <p>
      <strong>
        Please check our About page to understand the project and to read the
        Disclaimer. By creating a Monster you are agreeing with it!
      </strong>
    </p>
    <p>
      Just install Scatter and you will be able to create your first monster on
      EOS MainNet!
    </p>

    <h2>Quick FAQ</h2>
    <p>
      <strong>
        I created my monster, it's sleeping and I can't interact with, what
        should I do?
      </strong>
      <br />
      It's the spawning time, every time your pet is sleeping it needs a minimum
      period of 4 hours to rest and be awake again.
    </p>
    <p>
      <strong>Why my pet does not want to eat?</strong>
      <br />
      Your pet is full, it needs at least an interval of 3 hours before you feed
      him again.
    </p>
    <p>
      <strong>Why my pet does not want to sleep?</strong>
      <br />
      Your pet is not tired, it needs to be at least 8 hours awake to go sleep
      again!
    </p>
  </PageContainer>
)

export default FaqScreen
