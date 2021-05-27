// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

/* Inheritance */

contract Country {
    string public name;
    int public a;
    
    constructor(int _a) public {
        a = _a;
    }
}

contract Argentina {
    uint public zipCode;
}

contract BuenosAires is Country(10), Argentina {
    uint public phone;
}
