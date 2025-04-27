module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", //local gost (Ganache)
      port: 7545, //port number
      network_id: "*" // Match any network id
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}