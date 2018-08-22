import { GlobalConfig } from "../../store"

export interface MonsterProps {
  id: number,
  name: string,
  owner: string,
  type: number,
  createdAt: number,
  deathAt: number,
  hunger: number,
  health: number,
  awake: number,
  lastFeedAt: number,
  lastAwakeAt: number,
  lastBedAt: number,
  isSleeping: boolean
}

export const calcMonsterStats = (monster: MonsterProps, config: GlobalConfig) => {

  if (config) {
    const currentTime = Date.now()

    // calculates hunger bar
    monster.hunger = 100
    monster.deathAt = 0

    const hungrySeconds = (currentTime - monster.lastFeedAt) / 1000
    const hungryPoints = hungrySeconds * config.max_hunger_points / config.hunger_to_zero
    monster.hunger = Math.round(config.max_hunger_points - hungryPoints)
    monster.hunger = monster.hunger < 0 ? 0 : monster.hunger

    const effectHpHunger = hungryPoints > config.max_health ?
      Math.round((hungryPoints - config.max_hunger_points) / config.hunger_hp_modifier) :
      0

    // calculates health and death time
    monster.awake = 100
    monster.health = config.max_health - effectHpHunger
    if (monster.health <= 0) {
      monster.hunger = monster.health = monster.awake = 0

      monster.deathAt = ((monster.lastFeedAt / 1000) + config.hunger_to_zero
        + (config.hunger_to_zero * config.hunger_hp_modifier)) * 1000
    }

  }

  console.info(monster)

  return monster
}