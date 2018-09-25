import * as React from "react"
import PageContainer from "../shared/PageContainer"
import { Monster3DProfile, ActionType } from "react-monstereos-profile"


import get3dModel from "../monsters/monster3DMatrix"

import {
  monsterModelSrc,
} from "../monsters/monsters"

const PAGE_WELCOME = process.env.REACT_APP_PAGE_WELCOME || "A Monster Tamagotchi and Battle game for EOS blockchain!"

const HomeScreen = (props: any) => {

  const monster3dModel = get3dModel(105) // DEVIL

  return (<PageContainer>
    <div>
      <Monster3DProfile
          typeId={"105"}
          path={monsterModelSrc(monster3dModel.model)}
          action={ActionType.IDLE}
          {...monster3dModel}
          size={{ height: "350px" }}
          background={{ alpha: 0 }}
          zoom={false}
        />
    </div>
    <p className="home-monster">{PAGE_WELCOME}</p>
  </PageContainer>)
}

export default HomeScreen