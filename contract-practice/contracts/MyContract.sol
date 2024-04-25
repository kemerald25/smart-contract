// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract MyContract {
    uint256 a = 100;
    uint256 b = type(uint256).max;
    bool c = true;

    constructor() {
        console.log(a);
    }
}
