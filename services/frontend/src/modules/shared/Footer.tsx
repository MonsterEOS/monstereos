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
          <a href="https://discord.gg/ne9Y3ry" target="_blank">
            <i className="fa fa-2x fa-discord" style={{verticalAlign: "middle", marginRight: 3}} />
            Discord
          </a>
          {" "}
          <a href="https://github.com/MonsterEOS/monstereos" target="_blank">
            <i className="fa fa-2x fa-github" style={{verticalAlign: "middle", marginRight: 3}} />
            GitHub
          </a>
          {" "}
          <a href="https://medium.com/@monstereos" target="_blank">
            <i className="fa fa-2x fa-medium" style={{verticalAlign: "middle", marginRight: 3}} />
            Medium
          </a>
          {" "}
          <a href="https://twitter.com/MonsterEos" target="_blank">
            <i className="fa fa-2x fa-twitter" style={{verticalAlign: "middle", marginRight: 3}} />
            Twitter
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
            <img src="https://pbs.twimg.com/profile_images/990946608090157061/oy9s85If_400x400.jpg" 
            style={{maxWidth: 45, verticalAlign: "middle", marginLeft: 4, borderRadius: "50%"}}
            alt="Cypherglass" />
          </a>
        </p>
      </div>
    </div>
  </footer>
)

export default Footer