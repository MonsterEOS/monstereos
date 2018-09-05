import * as React from "react"
import { connect } from "react-redux"
import { State, doLoadOffers } from "../../store"
import { getEosAccount } from "../../utils/scatter"
import { OfferProps } from "./market"

import PageContainer from "../shared/PageContainer"
import TitleBar from "../shared/TitleBar"
import OfferCard from "./OfferCard"

interface Props {
  eosAccount: string,
  offers:OfferProps[],
  globalConfig: any,
  dispatchDoLoadOffers: any,
}


class MarketScreen extends React.Component<Props, {}> {

  public render() {

    const { eosAccount } = this.props

    if (eosAccount) {
      return this.renderMarket(eosAccount)
    } else {
      return <PageContainer>
          <div>Ooopss... looks like you are not identified</div>
        </PageContainer>
    }
  }

  private renderMarket(eosAccount: string) {

    const { offers } = this.props
    const subHeader = (<small className="is-hidden-mobile">
     {offers.length} offers
      </small>)


    return (
      <PageContainer>
        <TitleBar
          title="Market for Monsters"
          menu={[subHeader]} />
          <OfferList
            offers={offers} />
      </PageContainer>
    )
  }
}

const OfferList = ({ offers, update }: any) => (
  <div className="columns is-multiline">
    {offers.map((offer: any) => (
      <OfferCard
        key={offer.id}
        offer={offer}
        requestUpdate={update}/>
    ))}
  </div>
)

const mapStateToProps = (state: State) => {
  const eosAccount = getEosAccount(state.identity)

  return {
    eosAccount,
    offers: state.offers,
    globalConfig: state.globalConfig,
  }
}

const mapDispatchToProps = {
  dispatchDoLoadOffers: doLoadOffers
}

export default connect(mapStateToProps, mapDispatchToProps)(MarketScreen)