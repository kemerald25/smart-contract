// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;
import "hardhat/console.sol";
// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract MyContract {
    uint256 public sum;


    constructor(uint256 x, uint256 y) {
        sum = add(x,y);
    }
    function add(uint256 x, uint256 y) private pure  returns (uint256) {
        return x + y;
    }
}
