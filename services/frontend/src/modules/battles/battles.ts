import { GlobalConfig } from "../../store"
import { MonsterProps } from "../monsters/monsters"

export interface BattleCommitment {
  player: string,
  commitment: string,
  reveal: string
}

export interface Arena {
  host: string,
  lastMoveAt: number,
  mode: number,
  petsStats: any[],
  startedAt: number
  commits: BattleCommitment[]
}

export const parseBattlesFromChain = (battle: any): Arena => {
  return {
    host: battle.host,
    mode: battle.mode,
    lastMoveAt: battle.last_move_at * 1000,
    petsStats: battle.pets_stats,
    startedAt: battle.started_at * 1000,
    commits: battle.commits
  }
}

export const parseConfigFromChain = (config: any): GlobalConfig => {
  return {
    attack_max_factor: config.attack_max_factor,
    attack_min_factor: config.attack_min_factor,
    battle_busy_arenas: config.battle_busy_arenas,
    battle_idle_tolerance: config.battle_idle_tolerance,
    battle_max_arenas: config.battle_max_arenas,
    creation_tolerance: config.creation_tolerance,
    hunger_hp_modifier: config.hunger_hp_modifier,
    hunger_to_zero: config.hunger_to_zero,
    last_element_id: config.last_element_id,
    last_id: config.last_id,
    last_pet_type_id: config.last_pet_type_id,
    max_health: config.max_health,
    max_hunger_points: config.max_hunger_points,
    min_awake_interval: config.min_awake_interval,
    min_hunger_interval: config.min_hunger_interval,
    min_sleep_period: config.min_sleep_period
  }
}

export const getCurrentBattle = (arenas: Arena[], player: string) => {
  return arenas.find((arena: Arena) => {
    return arena.host === player ||
      arena.commits.filter((commitment: BattleCommitment) => commitment.player === player).length > 0
  })
}

export const getAvailableMonstersToBattle = (monsters: MonsterProps[]) => {
  return monsters.filter((monster: MonsterProps) =>
    monster.health > 40 &&
    !monster.isSleeping &&
    !monster.deathAt
  )
}