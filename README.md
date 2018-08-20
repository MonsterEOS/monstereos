# MonsterEOS

![MonsterEOS Demo](https://github.com/leordev/monstereos/raw/master/public/images/demo.png)

## Setup

First of all, clone the repo and enter in the root folder of the project:

```
git clone https://github.com/MonsterEOS/monstereos
cd monstereos
```

We structured everything in microservices and it can be automagically initialized by docker! Don't be afraid of docker, a lot of people hear docker and run away but we already did the hard part (configuration) for you. You will just need to install docker in your computer (a simple installer that you will press next next next finish lol).

After you installed docker just run the following single command:

```
docker-compose up -d
```

Open Kitematic (a nice UI for docker containers management that comes by default on docker installation) and you will see all the containers running:

- eosdev: this is the local blockchain with basic data (ready for development) and development of the contracts
- postgres: this is our database, the chain is the source of truth, and this is just a cache layer to help our application to query nice reports fast
- demux: this is the blockchain watcher, demux is a tool from Block.one that allows us to watch the blockchain, save records to database and also submit emails, notifications, external apis etc <3
- backend: this is our web api server used to read and present data from the database, also serving websockets to nice realtime interactions in the app, in our case we are using node.js
- frontend: this is our UI app, in our case we are using react.js
- nginx: nginx is our webserver, serving the frontend static files and proxying the backend, also nginx can act as a load balancer if we want to scale

### EOS Dream Stack

You can build any Dapp using the above structure. Tweak the structure a little bit to satisfy all your needs, i.e.: you can change the postgres for other database as mongo or mysql; you might not need the backend if your app is very basic, allowing the frontend to read directly from the chain; change the frontend to whatever framework you want to use as Vue or Angular, not only this but your frontend can be a mobile native app, why not?

### Initialize Chain and Setup Database

// TODO: improve it!

1. execute the eosiodev container and run the scripts to initialize the chain with some data
2. open demux folder and execute `yarn migrate` to create basic tables in database
3. restart demux
4. enjoy your app


## About

It's Just a Tamagotchi Game to show off EOS blockchain potential! You as an early adopter, will have a chance to carry a very old Monster while the game is in progress, getting cool functionalities and public traction :D

This project is a mini-game experiment for EOS Blockchain, still in progress. It's open sourced and all of us can tweak the contract, architecture and design of tables to see what works the best in terms of performance and good practices for EOS.

To keep your pet alive you must feed him, play with him, take him to the bed and wash him!

Only the feeding and sleeping/awake feature is done for now... There's a lot of interesting stuff that we can do here to improve the project like experience points (+ age and evolutions), inventory of items, multiplayer options, breeding, ownership transferring and tokenization.

We would love to have more and more developers to get in touch in GitHub repository, open issues, open discussions and so on, about what would be the best way to design the architecture and implement the contracts, how things should work in blockchain, how we should integrate Scatter, other wallets and provide top-security, what we should avoid, what's the best practice in terms of coding and everything else.

We love EOS Community and we think that we can build a better world together!

Monsters Pictures Package: Itch.io @Pipoya - Free RPG Monster Pack

Sleeping GIF Credits: Giphy @AlabasterPizzo

Arena Background Credits: Freebies from craftpix.net - license here: https://craftpix.net/file-licenses/

## Disclaimer

This project remains purely experimental software and is not to be considered in any way production fit nor has any guarantee of any kind. Use at your own risk.

Any transferred tokens sent to account name 'monstereosio' will not return any entitlement of any asset, investment digital or physical including the sent asset itself. Any proceeds received from any user transfers are of the sole control and discretion of the receiver.

## Big Thanks

Open source is all :heart:

Monsters Pictures Package: [Itch.io @Pipoya - Free RPG Monster Pack](https://pipoya.itch.io/free-rpg-monster-pack)

Sleeping GIF Credits: [Giphy @AlabasterPizzo](https://giphy.com/stickers/zzz-snore-51WvIEoUKKHlGwgmgy)
