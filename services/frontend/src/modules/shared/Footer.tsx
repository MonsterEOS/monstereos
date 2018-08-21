import * as React from "react"

const Footer = (props: any) => (
  <footer className="footer">
    <div className="container">
      <div className="content has-text-centered">
        <p>
          <strong>MonsterEOS</strong> - The source code is licensed <a href="http://github.com/MonsterEOS/monstereos/LICENSE">MIT</a>.
        </p>
        <p>
          <a href="https://github.com/MonsterEOS/monstereos" target="_blank">
            <i className="fa fa-2x fa-github" />
          </a>
          {" | "}
          <a href="https://t.me/joinchat/Hel9rgyuHrEwzsjG2SlUNQ" target="_blank">
            <i className="fa fa-2x fa-telegram" />
          </a>
        </p>
      </div>
    </div>
  </footer>
)

export default Footer