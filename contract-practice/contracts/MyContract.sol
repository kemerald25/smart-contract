// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;
import "hardhat/console.sol";

contract MyContract {
    enum Foods { Apple, Pizza, Bagel, Banana }
    Foods public food1 = Foods.Apple;
    Foods public food2 = Foods.Pizza;
    Foods public food3 = Foods.Bagel;
    Foods public food4 = Foods.Banana;
    
    string public name;
    string public symbol;
    uint8 public decimals;

    constructor (string memory _name, string memory _symbol, uint8 _decimals) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }
}
