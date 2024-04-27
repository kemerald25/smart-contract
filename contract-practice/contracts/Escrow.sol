// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
import "hardhat/console.sol";

contract EscrowService {

    address payable public buyer;
    address payable public seller;
    address payable public escrowAgent;
    uint public amount;
    constructor(address _buyer, address _seller, uint _amount) payable {
        buyer = payable(_buyer);
        seller = payable(_seller);
        escrowAgent = payable(msg.sender);
        amount = _amount;
    }

    function releaseFunds()  public {
        require(msg.sender == buyer, "Only the buyer can release funds");
        seller.transfer(amount);
    }

    function cancelTransaction()  public {
        require(msg.sender == buyer, "Only the buyer can cancel the transaction");
        buyer.transfer(amount);
    }
}