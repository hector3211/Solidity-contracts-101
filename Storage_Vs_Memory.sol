// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Cities {
    string[] public cities = ["Tampa", "Orlando"];

    /* 
        this does not change our state variable called
        cities

    */
    function f_memory() public view {
        string[] memory s1 = cities;
        s1[0] = "Berlin";
    }

    // this changes our state variable called cities
    function f_storage() public {
        string[] storage s1 = cities;
        s1[0] = "Berlin";
    }
}
