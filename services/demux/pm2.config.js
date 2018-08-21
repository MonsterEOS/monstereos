module.exports = {
  apps: [
    {
      name: "demux",
      exec_interpreter: "ts-node",
      script: "./src/index.ts",
      restart_delay: 5000,
      min_uptime: "20s",
      max_restarts: 5,
      ignore_watch: ["node_modules", "./src/services"],
    },
    {
      name: "postgraphile",
      exec_interpreter: "ts-node",
      script: "./src/services/postgraphile.ts",
      restart_delay: 5000,
      min_uptime: "20s",
      max_restarts: 5,
      ignore_watch: ["node_modules"],
      watch_options: {
        usePolling: true,
        interval: 1000,
      },
    },
    {
      name: "data-cleaner",
      exec_interpreter: "ts-node",
      script: "./src/services/data-cleaner.ts",
      restart_delay: 5000,
      min_uptime: "20s",
      max_restarts: 5,
      ignore_watch: ["node_modules"],
      watch_options: {
        usePolling: true,
        interval: 1000,
      },
    }
  ],
}
