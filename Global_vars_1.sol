// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract GlobalVars {
    address public owner;
    uint256 public sentValue;

    constructor() {
        /*
            this calls up the address that
            started this contract
        */
        owner = msg.sender;
    }

    // the functions allows you to change "owners"
    function changeOwner() public {
        owner = msg.sender;
    }

    // lets recieve eth!
    function sendEther() public payable {
        sentValue = msg.value;
    }

    // lets grab the balance
    function getBalance() public view returns (uint256) {
        // this grabd the currect address and balance of addr
        return address(this).balance;
    }

    /*
        this function calcs how much gas was spent
        to run up this function
    */
    function howMuchGas() public view returns (uint256) {
        uint256 start = gasleft();
        uint256 j = 1;
        for (uint256 i = 1; i < 20; i++) {
            j *= i;
        }
        uint256 end = gasleft();
        return start - end;
    }
}
