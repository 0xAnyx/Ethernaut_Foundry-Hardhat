import { ethers } from "hardhat";

async function main() {
  const level3 = await ethers.deployContract("CoinFlipGuess")
  await level3.waitForDeployment()

  await level3.coinFlipGuess("0x308E226debfF4e382b4aaBeC4c306A5837898be2")
  console.log("Done!!");
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
