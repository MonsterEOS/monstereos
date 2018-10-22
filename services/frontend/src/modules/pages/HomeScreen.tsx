import * as React from "react"
import PageContainer from "../shared/PageContainer"
import { Monster3DProfile, ActionType } from "react-monstereos-profile"

const PAGE_WELCOME =
  process.env.REACT_APP_PAGE_WELCOME ||
  "A Monster Tamagotchi and Battle game for EOS blockchain!"

const HomeScreen = (props: any) => {
  return (
    <PageContainer>
      <div>
        <Monster3DProfile
          typeId={105} // Devil
          action={ActionType.IDLE}
          size={{ height: "350px" }}
          background={{ alpha: 0 }}
          zoom={false}
        />
      </div>
      <p className="home-monster">{PAGE_WELCOME}</p>
    </PageContainer>
  )
}

export default HomeScreen
