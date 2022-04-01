// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract DynamicArrays {
    /*  public variables automatically recieves
        a getter functionality
    */
    uint256[] public numbers;

    // here we grab the length of our dynamic array
    function getLenght() public view returns (uint256) {
        return numbers.length;
    }

    /* 
        this function is like .append() in python
        it adds to an array!
     */
    function addElement(uint256 number) public {
        numbers.push(number);
    }

    /*
        this function allows us to return zero for
        out of bounds index calling 
        instead of an error
    */
    function getElelement(uint256 index) public view returns (uint256) {
        if (index < numbers.length) {
            return numbers[index];
        }
        return 0;
    }

    /*
        this is like the .pop() in Python
        it removes the LAST item in a array!
    */
    function Pop() public {
        numbers.pop();
    }

    /*  here we creat an array within our function scope
        and we assign it to be 3 objects in length
        we have to use memory beacuse were calling it in
        our function
    */
    function f() public {
        uint256[] memory y = new uint256[](3);
        y[0] = 10;
        y[1] = 20;
        y[3] = 30;
        numbers = y;
    }
}
