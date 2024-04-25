pragma solidity ^0.8.24;
import "../contracts/MyContract.sol";

contract MyContractTest {
    MyContract public mycontract;
    
    function setup()  public {
        mycontract = new MyContract(2, 2);
    }

    function textMyContract()  public {
        assertEq(mycontract.sum(), 4);
    }
}