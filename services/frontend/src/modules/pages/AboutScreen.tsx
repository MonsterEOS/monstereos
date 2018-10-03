import * as React from "react"
import PageContainer from "../shared/PageContainer"

const aboutMarkdown = `
## About
MonsterEOS was born as an experimental decentralized application in the EOS Blockchain. It is a Tamagotchi style game where you keep your pets alive and happy by feeding them, providing a pleasant environment, and letting them rest. By popular demand and adoption from the EOS community, we have added requested features such as battles and a monster market.

The project will ALWAYS be open source because we believe it’s a must for a decentralized world, and also, because we want the project to be building block and code reference for other great games and dapps on the EOS blockchain. In fact, we encourage everyone to browse our code repository, and extend/modify the game and re-publish as you wish - the more dapps built for our wonderful EOS community the better.

The game is currently in **BETA**, and under constant development and improvement. This does not restrict us from implementing profit channels to fund the required resources and team. For now, the project receives 1% of all the market transfers and we are studying ways of implementing in-app purchases avoiding PAY-TO-WIN schemes.

Many crypto-world games are based on a gambling scheme. These have a place in the market, but our goal for MonsterEOS is for folks to just have FUN, period. It's okay to create monsters, raise them, love them and then exchange them. That's why we have a market, but we aren't intending MonsterEOS to be second source of income for people, besides... You will probably love your monsters too much to part with them.

We love the EOS Community and we know that we can build a better world together!

## Connect with us!

Discord: https://discord.gg/gmrDtHF

Twitter: https://twitter.com/MonsterEos

Medium: https://medium.com/monstereos

GitHub: https://github.com/MonsterEOS

Telegram: https://t.me/joinchat/Hel9rgyuHrEwzsjG2SlUNQ


## Official Collaborators & Shareholders

Access our DAO here: https://github.com/MonsterEOS/dao

Name | Title | Social Info
---|---|---
Leo Ribeiro | Founder and Head of Development | [GitHub](http://github.com/leordev) / [Twitter](https://twitter.com/leordev) / [Steemit](https://steemit.com/@leordev)
Alex Rozgo | Head of Gaming Engineering | [GitHub](http://github.com/rozgo) / [Twitter](https://twitter.com/rozgo) / [Steemit](https://steemit.com/@rozgo)
Vertex Studio | Arts & Gaming Studio | [Official Website](https://vertexstudio.github.io)
Cypherglass | Sponsor of Infrastructure and EOS Resources | [Official Website](https://cypherglass.com) / [Twitter](https://twitter.com/cypherglassbp) / [Youtube](https://www.youtube.com/channel/UCnXofUeO5w1dO9JGWWDdqPQ) / [Steemit](https://steemit.com/@cypherglass)
Friedger Muffke | Developer | [GitHub](http://github.com/friedger) / [Twitter](https://twitter.com/fmdroid) / [Steemit](https://steemit.com/@friedger)
Marcelo Mendes | Developer | [GitHub](http://github.com/marcelormendes) / [Twitter](https://twitter.com/itsmemarcelorm)
Julien Lucca | Developer | [GitHub](http://github.com/lucca65) / [Twitter](https://twitter.com/JulienLucca)
John Williamson | Developer | [GitHub](http://github.com/velua) / [Twitter](https://twitter.com/velua) / [Steemit](https://steemit.com/@johnwilliamson)
Jenny Calpu | PR & Marketing | [Twitter](https://twitter.com/topkpop) / [Steemit](https://steemit.com/@topkpop)
Daniel Wagner | Gaming Curator | [Medium](https://medium.com/@tikuzero)

The project is open to the public and we welcome anyone who would like to collaborate. Our Github repository is there for the community, but in order to receive shares of the project and participate in our distribution, you must be approved by board members.

Our Decentralized Autonomous Organization is still being defined but [you can check out our current proposal here](https://github.com/MonsterEOS/dao/blob/master/README.md). This model is inspired by Slicing Pie for startup companies, and we believe that it’s the fairest way to reward collaborators of an open source project. We intend to translate our agreement into an EOS Smart Contract and automate the distribution process in the future.


##  Partnerships

Large Seafaring Mammal T-Shirts: [Buy your shirt here!](https://largeseafaringmammal.com/products/monstereos-x-lsm)

MyEOSKit - EOS Blockchain Explorer: https://www.myeoskit.com/#/tx/monstereosio - This is where we link our transactions and explore them.

MonsterEOS Animal Jungle Version - JungleNet is the TestNet that we consider as our staging environment, and guess what?! They just prepared an Animal Version of Monsters! Coming out Soon...

If you have any partnership ideas, feel free to contact us in our Telegram, GitHub or Email.


## Disclaimer

This project remains purely experimental software and is not to be considered in any way production ready, and has no guarantee of any kind. Use at your own risk.

Any transferred tokens sent to account name 'monstereosio' will not return any entitlement of any asset, investment digital or physical including the sent asset itself. Any proceeds received from any user transfers are used at the sole control and discretion of the receiver.


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