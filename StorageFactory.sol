// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

import "./SimpleStorage.sol";

// here we grab inheritance from SS for our SF contract
contract StorageFactory is SimpleStorage {
    // this array keeps track of our contracts we deploy!
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // here we grab SS and turn it into sS and make a new "SS object"
        SimpleStorage simpleStorage = new SimpleStorage();
        // everytime we deploy this, we will add it to our array
        simpleStorageArray.push(simpleStorage);
    }

    // our StorageFactory store function to store!
    // when you want to interact with a contract you need, 1. address and 2. ABI
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // here we grab the contract address from it's index!
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(
            _simpleStorageNumber
        );
    }

    // our retrieve function to get/retrieve!
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]))
                .retrieve();
    }
}
