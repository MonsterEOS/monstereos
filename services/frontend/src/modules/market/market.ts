import { MonsterProps } from "../monsters/monsters"

export interface OrderProps {
  id: number
  user: string
  monster: MonsterProps
  type: number
  newOwner: string
  value: string
  placedAt: number
  endsAt: number
  transferEndsAt: number
}

const deletedMonster = (petId: number, owner: string): MonsterProps => {
  return {
    id: petId,
    name: "",
    owner,
    type: -1,
    elements: [],
    deathAt: 0,
    createdAt: 0,
    lastFeedAt: 0,
    lastAwakeAt: 0,
    lastBedAt: 0,
    isSleeping: false,
    hunger: 100,
    health: 100,
    energy: 100,
    actions: [],
  }
}

export const parseOrderFromChain = (
  order: any,
  monsters: MonsterProps[],
): OrderProps | undefined => {
  const monster = monsters.find(
    (value: MonsterProps): boolean => {
      return value.id === order.pet_id
    },
  )
  return {
    id: order.id,
    user: order.user,
    monster: monster ? monster : deletedMonster(order.pet_id, order.user),
    type: order.type,
    newOwner: order.new_owner,
    value: order.value,
    placedAt: order.placed_at * 1000,
    endsAt: order.ends_at * 1000,
    transferEndsAt: order.transfer_ends_at,
  }
}

export const amountOfAsset = (asset: string) => {
  try {
    return Number(asset.substring(0, asset.indexOf(" ")))
  } catch (err) {
    console.error("unable to parse asset: ", err)
    return 0
  }
}

export const amountOfAssetPlusFees = (asset: string, marketFee: number) => {
  const amount = amountOfAsset(asset)
  return amount * (1 + marketFee / 10000)
}
