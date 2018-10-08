import * as React from "react"
import {connect} from "react-redux"
import {State} from "../../store"
import {Query} from "react-apollo"

import PageContainer from "../shared/PageContainer"
import MonsterCard from "./MonsterCard"
import TitleBar from "../shared/TitleBar"

import {GET_MONSTER, petsGqlToMonsters} from "./monsters.gql"
import MonsterHistory from "./MonsterHistory"
import {loadMonsterById, loadPetTypes, loadElements, loadOrders} from "../../utils/eos"
import {MonsterProps} from "./monsters"
import {OrderProps} from "../market/market"
import OrderCard from "../market/OrderCard"

interface Props {
  match: any,
  globalConfig: any,
}

interface ReactState {
  monster?: MonsterProps,
  order?: OrderProps
}

class MyMonstersScreen extends React.Component<Props, ReactState> {

  public state = {monster: undefined, order: undefined}

  public async componentDidMount() {
    this.refresh()
  }

  public render() {

    const {match: {params: {id}}} = this.props

    const variables = {id}

    const {globalConfig} = this.props

    const {monster, order} = this.state


    return <Query query={GET_MONSTER} variables={variables}>
      {({data, loading, refetch}) => {

        let subHeader = null

        const monsters = data && data.allPets ? petsGqlToMonsters(data.allPets, globalConfig) : []
        let monsterDetails = null

        if (loading || !data || !data.allPets) {
          subHeader = (
            <small>
              <i className="fa fa-spin fa-spinner"/> Loading Monster... Our servers are Syncing with the Chain
            </small>
          )
        } else {
          monsterDetails = monsters[0]
          subHeader = (<small className="is-hidden-mobile">
            This monster has {(monsterDetails && monsterDetails.actions && monsterDetails.actions.length) || 0} actions
          </small>)
        }

        const refetchMonster = () => {
          setTimeout(() => refetch(variables), 500)
        }

        return (
          <PageContainer>
            <TitleBar
              notMobile
              title="Monster Details"
              menu={[subHeader]}/>

            {monster &&
            <div>
                <div className="columns is-multiline">
                    <MonsterCard
                        monster={monster!}
                        requestUpdate={refetchMonster}
                        hideLink/>
                  {order && <OrderCard
                      order={order!}
                      hideProfile
                      requestUpdate={refetchMonster}/>}
                </div>
                <div className="column">
                  {monsterDetails && <MonsterHistory actions={monsterDetails.actions}/>}
                </div>
            </div>
            }
          </PageContainer>
        )
      }}
    </Query>
  }

  private refresh = async () => {
    const {match: {params: {id}}, globalConfig} = this.props
    let monster = await loadMonsterById(id, globalConfig)
    const petTypes = await loadPetTypes()
    const elements = await loadElements()
    // remove first element as it appears on every monster
    const monsterElements = petTypes[monster.type].elements.slice(1).map((e: any) => elements[e])

    monster = {...monster, elements: monsterElements}

    this.setState({monster})

    const orders: OrderProps[] = await loadOrders(globalConfig)
    const validOrder = orders.find(vo => vo.monster.id === Number(id))

    console.info("Order Found", validOrder)
    if (validOrder) {
      this.setState({order: validOrder})
    }


  }
}

const mapStateToProps = (state: State) => {
  return {
    globalConfig: state.globalConfig,
  }
}


export default connect(mapStateToProps)(MyMonstersScreen)
