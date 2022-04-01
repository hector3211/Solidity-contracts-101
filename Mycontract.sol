// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract MyContract {
    int256 public value;
    address public owner;

    constructor() {
        value = 22;
        owner = msg.sender;
    }

    function newValue(int256 _value) public {
        value = _value;
    }

    function getValue() public view returns (int256) {
        return value;
    }
}
