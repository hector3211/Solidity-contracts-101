// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FixedSizeArrays {
    /*
    our array that is length of 3 and values of 5,10,12
    */
    uint256[3] public numbers = [5, 10, 12];

    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;

    /* 
    here we create a function that for an index of our 
    array we change the value 
    */
    function setNumber(uint256 index, uint256 value) public {
        numbers[index] = value;
    }

    // here we made a function that returns a length of our array
    function getLength() public view returns (uint256) {
        return numbers.length;
    }

    // here our values will be shown in hexadecimal values
    function setBytesArray() public {
        b1 = "a";
        b2 = "ab";
        b3 = "abc";
        // bytes can not be modified!
        // example b3[0"index zero"] = "a" THIS WILL NOT WORK
    }
}
