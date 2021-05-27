// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

contract Polymorphism {
    
    function sum(int a, int b) public pure returns (int) {
        return a + b;
    }
    
    function sum(int a, int b, int c) public pure returns (int) {
        return a + b + c;
    }
    
}