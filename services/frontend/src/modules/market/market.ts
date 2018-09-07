import { MonsterProps } from "../monsters/monsters"

export interface OfferProps {
    id: number,
    user: string,
    monster: MonsterProps,
    type: number,
    newOwner: string,
    value: string,
    placedAt: number,
    endsAt: number,
    transferEndsAt: number
  }


  const deletedMonster = (petId:number, owner:string):MonsterProps => {
      return {
            id: petId,
            name: "",
            owner,
            type: -1,
            deathAt: 0,
            createdAt: 0,
            lastFeedAt: 0,
            lastAwakeAt: 0,
            lastBedAt: 0,
            isSleeping: false,
            hunger: 100,
            health: 100,
            awake: 100,
            actions: []
      }
}

export const parseOfferFromChain = (offer:any, monsters: MonsterProps[]):OfferProps | undefined => {

      const monster = monsters.find((value: MonsterProps):boolean => {
            return value.id === offer.pet_id
      })
        return {
            id : offer.id,
            user : offer.user,
            monster: monster ? monster : deletedMonster(offer.pet_id, offer.user),
            type : offer.type,
            newOwner : offer.new_owner,
            value: offer.value,
            placedAt: offer.placed_at * 1000,
            endsAt: offer.ends_at * 1000,
            transferEndsAt: offer.transfer_ends_at
        }
  }

  export const amountOfAsset = (asset:string) => {
    return Number(asset.substring(0, asset.indexOf(" ")))
  }