// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
import "hardhat/console.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    

    constructor () ERC20("RoyaleCoin", "Royale") {

        _mint(msg.sender, 100 * 10**ERC20.decimals());
       
    }
}
