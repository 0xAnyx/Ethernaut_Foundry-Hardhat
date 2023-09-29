import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "@nomicfoundation/hardhat-foundry";
const dotenv = require("dotenv");
dotenv.config({ path: __dirname + "/.env" });

const config: HardhatUserConfig = {
  solidity: "0.8.20",
  networks: {
    goerli: {
      url: `https://goerli.infura.io/v3/${process.env.GOERLI_API_KEY}`,
      accounts: [`${process.env.PRIVATE_KEY}`]
    }
  }
};

export default config;
