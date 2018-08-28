import * as React from "react"
import { connect } from "react-redux"
import { State, pushNotification } from "../../store"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"
import { Arena } from "./battles"
import { loadArenas } from "../../utils/eos"

interface Props {
  globalConfig: any,
  dispatchPushNotification: any
}

interface ReactState {
  arenas: Arena[]
}

class ArenasScreen extends React.Component<Props, ReactState> {

  public state = { arenas: [] }

  public componentDidMount() {
    this.refresh()
  }

  public render() {

    return (
      <PageContainer>
        <TitleBar
          title="Welcome to the Arena!" />
      </PageContainer>
    )
  }

  private refresh = async () => {
    const { dispatchPushNotification } = this.props

    try {
      const arenas = await loadArenas()
      this.setState({arenas})
    } catch (error) {
      console.error("Fail to load Arenas", error)
      dispatchPushNotification("Fail to load Arenas")
    }
  }
}

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
  }
}

const mapDispatchToProps = {
  dispatchPushNotification: pushNotification
}

export default connect(mapStateToProps, mapDispatchToProps)(ArenasScreen)