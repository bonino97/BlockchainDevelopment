// SPDX-License-Identifier: Unlicensed
pragma solidity 0.6.12;


interface Interface {
    // Cannot have variables.
    // Cannot contains inherits.
    // Can be inherited.
    // This can only contain FUNCTIONS!!! declarations.
    
    function recordName(string memory name) external; // Need to be external!!!
    
}


contract SomeCompanyName is Interface {
    string[] public students;
    function recordName(string memory name) override public {
        students.push(name);
    }
}

contract AnotherCompayName is Interface {
    mapping(string => bool) public students;
    
    function recordName(string memory name) override public {
        students[name] = true;
    }
}