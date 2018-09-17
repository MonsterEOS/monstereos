import * as React from "react"
import PageContainer from "../shared/PageContainer"

const aboutMarkdown = `
## About
MonsterEOS was born as an experimental decentralized application in EOS Blockchain, a Tamagotchi game where you could keep it alive by feeding and putting your monsters to sleep. Then, with some adoption from EOS community, we started to add requested features as battles and monsters market.

The project will ALWAYS be open source because we believe it’s a must for a decentralized world and also because we want the project to be a reference for games and dapps of EOS Blockchain. In fact, we encourage you to browse our code repository, extend/modify the game and publish as you wish - the more dapps EOS community have the better.

The game is in **BETA** phase, under constant developments and improvements but it does not restrict us of implementing profit channels to fund the required resources and the team. For now, we are getting 1% of all the market transfers and we are studying ways of implementing in-app purchases avoiding PAY-TO-WIN schemes. 

In the crypto world, the majority of the games are established for a get-rich scheme like gambling and Ponzi. We are NOT. We want everyone to have FUN, period. It’s ok to collect monsters, raise them and then exchange them, that’s why we have the market but don’t think it’s the main purpose of the game.

We love EOS Community and we think that we can build a better world together!

## Connect to us!

GitHub: https://github.com/MonsterEOS

Telegram: https://t.me/joinchat/Hel9rgyuHrEwzsjG2SlUNQ

Medium: https://medium.com/@monstereos

Twitter: https://twitter.com/MonsterEos


## Official Collaborators & Shareholders

Access our DAO here: https://github.com/MonsterEOS/dao

Name | Title | Social Info
---|---|---
Leo Ribeiro | Founder and Head of Development | [GitHub](http://github.com/leordev) / [Twitter](https://twitter.com/leordev) / [Steemit](https://steemit.com/@leordev)
Alex Rozgo | Head of Gaming Engineering | [GitHub](http://github.com/rozgo) / [Twitter](https://twitter.com/rozgo) / [Steemit](https://steemit.com/@rozgo)
Vertex Studio | Arts & Gaming Studio | [Official Website](https://vertexstudio.github.io)
To-Be-Announced | Sponsor of Infrastructure and EOS Resources | -
Friedger Muffke | Community Developer | [GitHub](http://github.com/friedger) / [Twitter](https://twitter.com/fmdroid) / [Steemit](https://steemit.com/@friedger)
John Williamson | Community Developer | [GitHub](http://github.com/velua) / [Twitter](https://twitter.com/velua) / [Steemit](https://steemit.com/@johnwilliamson)

The project is open to the public and we welcome anyone to collaborate in our Github, but in order to receive shares of the project and participate in our distribution, you must be approved by the current Head Board members consensus.

Our Decentralized Autonomous Organization is still being defined but [you can check our current proposal here](https://github.com/MonsterEOS/dao/blob/master/README.md). This model is inspired by Slicing Pie for startups companies, believing that it’s the fairest way to reward collaborators in an open source project. We intend to translate it into an EOS Smart Contract and automate the distribution process in the future.


##  Partnerships

Large Seafaring Mammal T-Shirts: [Buy your shirt here!](https://largeseafaringmammal.com/products/monstereos-x-lsm)

MyEOSKit - EOS Blockchain Explorer: https://www.myeoskit.com/#/tx/monstereosio - This is where we link our transactions and explore them.

MonsterEOS Animal Jungle Version - JungleNet is the TestNet that we consider as our staging environment, and guess what?! They just prepared an Animal Version of Monsters! Coming out Soon...

If you have any partnership ideas, feel free to contact us in our Telegram, GitHub or Email.


## Disclaimer

This project remains purely experimental software and is not to be considered in any way production fit nor has any guarantee of any kind. Use at your own risk.

Any transferred tokens sent to account name 'monstereosio' will not return any entitlement of any asset, investment digital or physical including the sent asset itself. Any proceeds received from any user transfers are of the sole control and discretion of the receiver.


## Big Thanks & Credits

Open source is all <3

Monsters Pictures Package: [Itch.io @Pipoya - Free RPG Monster Pack](https://pipoya.itch.io/free-rpg-monster-pack)

Sleeping GIF Credits: [Giphy @AlabasterPizzo](https://giphy.com/stickers/zzz-snore-51WvIEoUKKHlGwgmgy)

Arena Background Credits: Freebies from craftpix.net - license here: [Craftpix](https://craftpix.net/file-licenses/)

`

import * as ReactMarkdown from "react-markdown"

const AboutScreen = (props: any) => (
  <PageContainer>
    <ReactMarkdown source={aboutMarkdown} linkTarget="_blank" />
  </PageContainer>
)

export default AboutScreen