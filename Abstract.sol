// SPDX-License-Identifier: Unlicensed
pragma solidity 0.6.12;


abstract contract Abstract { // Any contract which has at least one non implemented function is called as an abstract contract.
    int public a;
    int public b;
    
    function abc() public { // Function declaration
        a = 13;
        b = 14;
    }
    
    function def() public view virtual returns (string memory);
}