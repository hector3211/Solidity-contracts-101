// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

struct Instructor {
    uint256 age;
    string name;
    address addr;
}

contract Acedemy {
    //  this is how we use inheritance from the struct
    Instructor public academyInstructor;

    // contant types called members
    enum State {
        pending,
        active,
        inactive
    }
    State public academyState = State.active;

    constructor(uint256 _age, string memory _name) {
        academyInstructor.age = _age;
        academyInstructor.name = _name;
        academyInstructor.addr = msg.sender; // the address that deploys contract
    }

    // changing a struct variable
    function changeInstructor(
        uint256 _age,
        string memory _name,
        address _addr
    ) public {
        if (academyState == State.active) {
            // here we created a NEW in memeory struct (myInstructor) from our old struct
            Instructor memory myInstructor = Instructor({
                age: _age,
                name: _name,
                addr: _addr
            });

            /*
                we turn our academyinstructor into our new
                in memory,in function Intructor object that we 
                manipulated
            */
            academyInstructor = myInstructor;
        }
    }
}

// we do the same as up top!
contract School {
    Instructor public schoolInstructor;
}
