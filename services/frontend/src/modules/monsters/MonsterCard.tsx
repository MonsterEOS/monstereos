import * as React from "react"

interface MonsterProps {
  id: number,
  petName: string,
  owner: string,
  typeId: number,
  deathAt: string,
  destroyedAt: string,
  createdAt: string
}

const MonsterCard = (props: MonsterProps) => {

  return (
    <div className="card">
      <div className="card-content">
          <p className="title is-4 ">{props.petName}</p>
      </div>
      <div className="card-image">
          <figure className="image monster-image is-square">
            <img alt={props.petName} src={`/images/monsters/monster-${props.typeId}.png`} />
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
                  <time dateTime={props.createdAt}>{props.createdAt}</time>
                  <br/>
                </p>
                <p className="is-6 has-text-success">Is alive for about 16 hours</p>
            </div>
            <p className="is-large has-margin-top">
              <b>HP: </b>
              <progress className="progress is-danger" max="100" value="100">100</progress>
            </p>
            <div className="columns is-multiline">
              <div className="column is-half">
                <b>Food: </b>
                <progress className="progress is-primary" max="100" value="100">100</progress>
              </div>
              <div className="column is-half">
                <b>Energy: </b>
                <progress className="progress is-success" max="100" value="100">100</progress>
              </div>
            </div>
          </div>
      </div>
      <footer className="card-footer">
        <a className="card-footer-item" data-empty="">Feed</a>
        <a className="card-footer-item" data-empty="">Bed Time!</a>
      </footer>
    </div>
  )
}

export default MonsterCard