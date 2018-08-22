import * as React from "react"
import * as moment from "moment"

interface MonsterProps {
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
}

const MonsterCard = (props: MonsterProps) => {

  const createdAt = moment(props.createdAt)
  const createdAtText = createdAt.format("MMMM, D YYYY @ h:mm a")
  const createdAtIso = createdAt.toLocaleString()
  // const deathAtText = moment(props.deathAt).toLocaleString()

  return (
    <div className="card">
      <div className="card-content">
          <p className="title is-4 ">{props.name}</p>
      </div>
      <div className="card-image">
          <figure className="image monster-image is-square">
            <img alt={props.name} src={`/images/monsters/monster-${props.type}.png`} />
          </figure>
      </div>
      <div className="card-content">
          <div className="content">
            <p>
              <span className="is-6">
                <b>Owner:</b> {props.owner}
              </span>
              <span className="is-pulled-right ">#{props.id}</span>
            </p>
            <div className="is-6">
                <p>
                  Birth Date:
                  {" "}
                  <time dateTime={createdAtIso}>{createdAtText}</time>
                  <br/>
                </p>
                <p className="is-6 has-text-success">Is alive for about 16 hours</p>
            </div>
            <p className="is-large has-margin-top">
              <b>HP: </b>
              <progress className="progress is-danger" max="100" value={props.health}>{props.health}</progress>
            </p>
            <div className="columns is-multiline">
              <div className="column is-half">
                <b>Food: </b>
                <progress className="progress is-primary" max="100" value={props.hunger}>{props.hunger}</progress>
              </div>
              <div className="column is-half">
                <b>Energy: </b>
                <progress className="progress is-success" max="100" value={props.awake}>{props.awake}</progress>
              </div>
            </div>
          </div>
      </div>
      <footer className="card-footer">
        { props.deathAt ?
        <a className="card-footer-item" data-empty="">Delete Monster</a> : <React.Fragment>
          <a className="card-footer-item" data-empty="">Feed</a>
          <a className="card-footer-item" data-empty="">Bed Time!</a>
        </React.Fragment>
        }

      </footer>
    </div>
  )
}

export default MonsterCard