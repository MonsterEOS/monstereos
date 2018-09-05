import * as React from "react"
import { Link } from "react-router-dom"

export const BattleHeader = ({
  battleText,
  host,
  allowLeaveBattle,
  allowConfirmation,
  isMyBattle,
  isOver,
  countdownText
}: any) => (
  <div className="content">
    <div className="box">
      <div className="level">
        <div className="level-left">
          <div className="level-item">
            <h1 className="title">{host}'s Arena</h1>
          </div>
        </div>
        <div className="level-right">
          { countdownText &&
            <div className="level-item ">
              {countdownText}
            </div>
          }
          { allowConfirmation &&
            <div className="level-item ">
              <a className="button is-success" onClick={allowConfirmation}>
                I'm Ready
              </a>
            </div>
          }
          { allowLeaveBattle &&
            <div className="level-item">
              <a className="button is-danger" onClick={allowLeaveBattle}>
                Leave Battle
              </a>
            </div>
          }
          { (!isMyBattle || isOver) &&
            <div className="level-item">
              <Link to="/arenas">
                Back to Arenas
              </Link>
            </div>
          }
        </div>
      </div>
      <div className="level">
        <div className="level-left">
          <div className="level-item ">
            {battleText}
          </div>
        </div>
        <div className="level-right">
          &nbsp;
        </div>
      </div>
    </div>
  </div>
)

export default BattleHeader