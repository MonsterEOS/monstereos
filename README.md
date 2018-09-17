# MonsterEOS

![MonsterEOS Icon](https://github.com/MonsterEOS/monstereos/raw/master/services/frontend/public/3d-icon.jpeg)

## Setup

First of all, clone the repo and enter in the root folder of the project:

```
git clone https://github.com/MonsterEOS/monstereos
cd monstereos
```

### Chain and Backend

We structured everything in microservices and it can be automagically initialized by docker! Don't be afraid of docker, a lot of people hear docker and run away but we already did the hard part (configuration) for you. You will just need to install docker in your computer (a simple installer that you will press next next next finish lol).

After you installed docker just run the following single command:

```
docker-compose up -d
docker-compose run demux yarn _migrate # credentials: user // pass  (for three steps)
docker restart monstereos_demux_1

docker exec -it monstereos_eosiodev_1 /bin/sh

cd /opt/application/scripts
./0000_init-chain.sh
./0010_load-elements.sh
./0020_load-pet-types.sh
./0030_load-data.sh
```

Open Kitematic (a nice UI for docker containers management that comes by default on docker installation) and you will see all the containers running:

- eosdev: this is the local single-producer blockchain with basic data (ready for development) and development of the contracts
- fullnode: this is a node that will simulate your mainnet fullnode that will listen for the blockchain and persist data in mongo with mongodb_plugin
- mongo: this is our chain database, fed by fullnode
- postgres: this is our database, the chain is the source of truth, and this is just a cache layer to help our application to query nice and fast reports
- demux: this is the blockchain watcher, demux is a tool from Block.one that allows us to watch the blockchain data through MongoDB, manage state saving records to database and also any side effects as submit emails, notifications, external apis etc <3 - we serve data with GraphQL out-of-the-box through postgraphile under port 3030

### Frontend App: UI

With all these nodes running you can just access it with our frontend app:

```
cd services/frontend
yarn
yarn start
```

Feel free to build any other apps and/or dockerize it. We didn't create a docker container for it because we usually build the static files (`yarn build`) and serve it on `gh-pages` branch.

### EOS Dream Stack

You can build any Dapp using the above structure. Tweak the structure a little bit to satisfy all your needs, i.e.: you can change the postgres for other database as mongo or mysql; you might not need demux and the backend if your app is very basic, allowing the frontend to read directly from the chain; change the frontend to whatever framework you want to use as Vue or Angular, not only this but your frontend can be a mobile native app, why not?


## About
MonsterEOS was born as an experimental decentralized application in EOS Blockchain, a Tamagotchi game where you could keep it alive by feeding and putting your monsters to sleep. Then, with some adoption from EOS community, we started to add requested features as battles and monsters market.

The project will ALWAYS be open source because we believe it’s a must for a decentralized world and also because we want the project to be a reference for games and dapps of EOS Blockchain. In fact, we encourage you to browse our code repository, extend/modify the game and publish as you wish - the more dapps EOS community have the better.

The game is in **BETA** phase, under constant developments and improvements but it does not restrict us of implementing profit channels to fund the required resources and the team. For now, we are getting 1% of all the market transfers and we are studying ways of implementing in-app purchases avoiding PAY-TO-WIN schemes. 

In the crypto world, the majority of the games are established for a get-rich scheme like gambling and Ponzi. We are NOT. We want everyone to have FUN, period. It’s ok to collect monsters, raise them and then exchange them, that’s why we have the market but don’t think it’s the main purpose of the game.

We love EOS Community and we think that we can build a better world together!


## Official Collaborators & Shareholders

Name | Title | Social Info
---|---|---
Leo Ribeiro | Founder and Head of Development | GitHub / Twitter / Steemit
Alex Rozgo | Head of Gaming Engineering | GitHub / Twitter / Steemit
Vertex Studio | Arts & Gaming Studio | Website / Twitter / Steemit
To-Be-Announced | Sponsor of Infrastructure and EOS Resources | Website / Twitter / Steemit
Friedger Muffke | Community Developer | GitHub / Twitter / Steemit
John Williamson | Community Developer | GitHub | Twitter | LinkedIn | Steemit

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

Open source is all :heart:

Monsters Pictures Package: [Itch.io @Pipoya - Free RPG Monster Pack](https://pipoya.itch.io/free-rpg-monster-pack)

Sleeping GIF Credits: [Giphy @AlabasterPizzo](https://giphy.com/stickers/zzz-snore-51WvIEoUKKHlGwgmgy)

Arena Background Credits: Freebies from craftpix.net - license here: [Craftpix](https://craftpix.net/file-licenses/)
