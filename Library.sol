// SPDX-License-Identifier: Unlicensed
pragma solidity 0.6.12;

contract A {
    using Math for int;
    
    function div(int a, int b) public pure returns (int) {
        return a.div(b);
    }
    
}

library Math {
     function div(int a, int b) public pure returns (int) {
         require(b != 0, "The denominator is Zero!");
         return a/b;
     }
}