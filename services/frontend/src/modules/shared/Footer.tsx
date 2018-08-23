import * as React from "react"

const Footer = (props: any) => (
  <footer className="footer">
    <div className="container">
      <div className="content has-text-centered">
        <p className="is-hidden-mobile">
          <strong>MonsterEOS</strong> - The source code is licensed MIT.
        </p>
        <p>
          <a href="https://t.me/joinchat/Hel9rgyuHrEwzsjG2SlUNQ" target="_blank">
            <i className="fa fa-2x fa-telegram" style={{verticalAlign: "middle", marginRight: 3}} />
            Telegram
          </a>
          {" "}
          <a href="https://github.com/MonsterEOS/monstereos" target="_blank">
            <i className="fa fa-2x fa-github" style={{verticalAlign: "middle", marginRight: 3}} />
            GitHub
          </a>
        </p>
      </div>
    </div>
  </footer>
)

export default Footer