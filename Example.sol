// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Porperty {
    string public myString = "hector";
    string public Location = "florida";
    address public immutable Owner;
    int256 immutable area = 100;

    constructor(string memory _myString, string memory _Location) {
        myString = _myString;
        Location = _Location;
        Owner = msg.sender;
    }

    function setString(string memory _myString) public {
        myString = _myString;
    }

    function setLocation(string memory _Location) public {
        Location = _Location;
    }

    function getString() public view returns (string memory) {
        return myString;
    }
}
