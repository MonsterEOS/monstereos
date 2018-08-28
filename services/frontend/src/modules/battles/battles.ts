export interface Arena {
  host: string,
  lastMoveAt: number,
  mode: number,
  petsStats: any[],
  startedAt: number
  commits: any[]
}

export const parseBattlesFromChain = (battle: any): Arena => {
  return {
    host: battle.host,
    mode: battle.mode,
    lastMoveAt: battle.last_move_at,
    petsStats: battle.pets_stats,
    startedAt: battle.started_at,
    commits: battle.commits
  }
}