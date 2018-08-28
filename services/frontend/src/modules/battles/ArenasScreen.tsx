import * as React from "react"
import { connect } from "react-redux"
import { State } from "../../store"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"

interface Props {
  match: any,
  globalConfig: any,
}

class ArenasScreen extends React.Component<Props, {}> {

  public render() {

    return (
      <PageContainer>
        <TitleBar
          title="Battle Arenas" />
      </PageContainer>
    )
  }
}

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
  }
}

export default connect(mapStateToProps)(ArenasScreen)