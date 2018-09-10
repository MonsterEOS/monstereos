import { Block, BlockInfo } from "demux"
import { EosAction } from "demux-eos"

export class MongoBlock implements Block {
  public actions: EosAction[]
  public blockInfo: BlockInfo

  constructor(rawBlock: any) {
    this.actions = this.collectActionsFromBlock(rawBlock)
    this.blockInfo = {
      blockNumber: rawBlock.block_num,
      blockHash: rawBlock.block_id,
      previousBlockHash: rawBlock.block.previous,
      timestamp: new Date(rawBlock.block.timestamp),
    }
  }

  protected collectActionsFromBlock(rawBlock: any = { actions: [] }): EosAction[] {
    return this.flattenArray(rawBlock.block.transactions.map(({ trx }: any) => {
      return trx.transaction.actions.map((action: any, actionIndex: number) => {

        // Delete unneeded hex data if we have deserialized data
        if (action.payload) {
          delete action.hex_data // eslint-disable-line
        }

        return {
          type: `${action.account}::${action.name}`,
          payload: {
            transactionId: trx.id,
            actionIndex,
            ...action,
          },
        }
      })
    }))
  }

  private flattenArray(arr: any[]): any[] {
    return arr.reduce((flat, toFlatten) =>
      flat.concat(Array.isArray(toFlatten) ? this.flattenArray(toFlatten) : toFlatten), [])
  }
}
