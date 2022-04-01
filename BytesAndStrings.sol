// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract BytesAndStrings {
    bytes public b1 = "abc"; // values will be in hexadecimal
    string public s1 = "abc";

    function addItem() public {
        b1.push("d");
        // s1.push("x"); will not work on strings
    }

    function getItem(uint256 i) public view returns (bytes1) {
        return b1[i];
        // return s1[i] will not work, can't access index's in strings
    }

    function getLength() public view returns (uint256) {
        return b1.length;
    }
}
