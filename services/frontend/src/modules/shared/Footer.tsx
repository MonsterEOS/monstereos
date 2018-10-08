import * as React from "react"

const FOOTER_VERSION = process.env.REACT_APP_VERSION || "n/a"
const FOOTER_NETWORK = process.env.REACT_APP_NETWORK || "Testing LocalHost"

const Footer = (props: any) => (
  <footer className="footer">
    <div className="container">
      <div className="content has-text-centered">
        <p className="is-hidden-mobile">
          <strong>MonsterEOS</strong> - The source code is licensed MIT.
        </p>
        <p>
          <a href="https://discord.gg/gmrDtHF" target="_blank">
            <i className="fa fa-2x fa-discord" style={{verticalAlign: "middle", marginRight: 3}} />
            Discord
          </a>
          {" "}
          <a href="https://twitter.com/MonsterEos" target="_blank">
            <i className="fa fa-2x fa-twitter" style={{verticalAlign: "middle", marginRight: 3}} />
            Twitter
          </a>
          {" "}
          <a href="https://medium.com/monstereos" target="_blank">
            <i className="fa fa-2x fa-medium" style={{verticalAlign: "middle", marginRight: 3}} />
            Medium
          </a>
          {" "}
          <a href="https://github.com/MonsterEOS/monstereos" target="_blank">
            <i className="fa fa-2x fa-github" style={{verticalAlign: "middle", marginRight: 3}} />
            GitHub
          </a>
          {" "}
          <a href="https://t.me/joinchat/Hel9rgyuHrEwzsjG2SlUNQ" target="_blank">
            <i className="fa fa-2x fa-telegram" style={{verticalAlign: "middle", marginRight: 3}} />
            Telegram
          </a>
        </p>
        <p>
          {FOOTER_NETWORK} - {FOOTER_VERSION}
        </p>
        <p>
          Powered by
          <a href="https://cypherglass.com" target="_blank">
            <img src="https://www.cypherglass.com/img/logo_horizontal.svg"
            style={{maxWidth: 150, verticalAlign: "middle", marginLeft: 4}}
            alt="Cypherglass" />
          </a>
        </p>
      </div>
    </div>
  </footer>
)

export default Footer