import { GlobalConfig, ENERGY_TO_ZERO } from "../../store"
import { MonsterProps } from "../monsters/monsters"

export interface BattleCommitment {
  player: string,
  commitment: string,
  randoms: number[]
}

export interface Arena {
  host: string,
  lastMoveAt: number,
  mode: number,
  petsStats: MonsterArenaStats[],
  startedAt: number,
  commits: BattleCommitment[],
  phase: number
}

export interface Element {
  id: number
  name: string
  ratios: number[]
}

export interface MonsterType {
  id: number
  elements: number[]
}

export interface MonsterArenaStats {
  pet_id: number,
  pet_type: number,
  player: string,
  hp: number
}

export const BATTLE_PHASE_JOINING = 1
export const BATTLE_PHASE_STARTING = 2
export const BATTLE_PHASE_GOING = 3
export const BATTLE_PHASE_FINISHED = 4

export const parseBattlesFromChain = (data: any): Arena => {
  const battle: Arena = {
    host: data.host,
    mode: data.mode,
    lastMoveAt: data.last_move_at * 1000,
    petsStats: data.pets_stats,
    startedAt: data.started_at * 1000,
    commits: data.commits,
    phase: BATTLE_PHASE_JOINING
  }

  const requiredPlayers = 2 // by default only 2 players

  if (battle.commits.length === requiredPlayers) {
    battle.phase = BATTLE_PHASE_STARTING

    const revealedCommitments = getReadyPlayers(battle)

    if (revealedCommitments.length === requiredPlayers) {
      battle.phase = BATTLE_PHASE_GOING
    }
  }

  return battle
}

export const getBattleText = (arena: Arena) => {
  switch (arena.phase) {
    case BATTLE_PHASE_JOINING:
      return "Joining phase: Waiting for players to join"
    case BATTLE_PHASE_FINISHED:
      return "The battle is over"
    case BATTLE_PHASE_GOING:
      return `Waiting for player ${arena.commits[0].player} attack`
    case BATTLE_PHASE_STARTING:
      return `Preparing phase: Waiting for players confirmation`
    default:
      return "Loading Battle phase..."
  }
}

export const getReadyPlayers = (arena: Arena) => {
  return arena.commits.filter((commit: BattleCommitment) => commit.randoms.length > 0)
}

export const isPlayerReady = (arena: Arena, player: string) => {
  const reveal = getReadyPlayers(arena).find((commit: BattleCommitment) => commit.player === player)
  return !!reveal
}

export const parseConfigFromChain = (config: any): GlobalConfig => {
  return {
    attack_max_factor: config.attack_max_factor,
    attack_min_factor: config.attack_min_factor,
    battle_busy_arenas: config.battle_busy_arenas,
    battle_idle_tolerance: config.battle_idle_tolerance,
    battle_max_arenas: config.battle_max_arenas,
    creation_tolerance: config.creation_tolerance,
    creation_awake: config.creation_awake,
    market_fee: config.market_fee,
    hunger_hp_modifier: config.hunger_hp_modifier,
    hunger_to_zero: config.hunger_to_zero,
    energy_to_zero: ENERGY_TO_ZERO,
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
    monster.health === 100 &&
    monster.energy > 30 &&
    !monster.isSleeping &&
    !monster.deathAt
  )
}

export const isWatcher = (arena: Arena, identity: string) => {
  return !arena.commits.find((commit) => commit.player === identity)
}

export const getBattleCountdown = (arena: Arena, globalConfig: GlobalConfig) => {
  if (arena.phase !== BATTLE_PHASE_GOING) {
    return 0
  }

  return Math.floor((arena.lastMoveAt +
    (globalConfig.battle_idle_tolerance * 1000) -
    Date.now()) / 1000)
}

export const battleCountdownText = (arena: Arena, globalConfig: GlobalConfig) => {
  if (arena.phase !== BATTLE_PHASE_GOING) {
    return ""
  }

  const turnTimeLeft = getBattleCountdown(arena, globalConfig)

  if (turnTimeLeft > 0) {
    return `Player ${arena.commits[0].player} has ${turnTimeLeft} seconds to attack`
  } else {
    return `Turn is expired. ANYONE CAN ATTACK!`
  }
}