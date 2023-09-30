import { ethers } from "hardhat";

async function main() {
    const level4 = await ethers.deployContract("HackTelephone")
    await level4.waitForDeployment()

    await level4.attack()
    console.log("Done!!");
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
