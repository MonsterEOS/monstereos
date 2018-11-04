import * as React from "react"
import PageContainer from "../shared/PageContainer"
import { Monster3DProfile, ActionType } from "react-monstereos-profile"
import { injectIntl, defineMessages } from "react-intl";

//const PAGE_WELCOME = process.env.REACT_APP_PAGE_WELCOME || "A Monster Tamagotchi and Battle game for EOS blockchain!"

const messages = defineMessages({
  text1: {
    id: 'app.homeScreen.text1',
    defaultMessage: 'A Monster Tamagotchi and Battle game for EOS blockchain!'
  },
})


const HomeScreen = (props: any) => {

  const {intl:{formatMessage}} = props;

  return (<PageContainer>
    <div>
      <Monster3DProfile
          typeId={105} // Devil
          action={ActionType.IDLE}
          size={{ height: "350px" }}
          background={{ alpha: 0 }}
          zoom={false}
        />
    </div>
    <p className="home-monster">{formatMessage(messages.text1)}</p>
  </PageContainer>)
}

export default HomeScreen