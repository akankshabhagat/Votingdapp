// module.exports = {
//   // See <http://truffleframework.com/docs/advanced/configuration>
//   // for more about customizing your Truffle configuration!
//   networks: {
//     development: {
//       host: "127.0.0.1",
//       port: 7545,
//       network_id: "*" // Match any network id
//     },
//     develop: {
//       port: 8545
//     }
//   }
// };
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,   // Ensure this matches the Ganache port
      network_id: "*",
    },
  },
  compilers: {
    solc: {
      version: "0.8.0",
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        },
      }
    }
  }
};


