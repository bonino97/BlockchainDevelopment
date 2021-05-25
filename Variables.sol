// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

contract Variables {
    /* integer, strings, boolean, bytes */
    /* array, enum, structs, mappings (dictionary in python) */

    /* Integers */
    int256 public normalInteger = 1; // int = int256
    int8 public numberTwo = 2; // 2^8 = 256
    int16 public numberThree = 3; // 2^16 = 65000
    uint8 public numberFour = 10; // Only positives numbers.

    /* Boolean */
    bool public booleanVar = true;

    /* String */
    string public stringVar = "Testing String Var";

    /* Bytes */
    bytes public byteVar = "abc"; // 0x616263

    /* Arrays */
    string[] public dynamicArray; //Dynamic Array. Without max.
    string[3] public fixedOrStaticArray; //Fixed length array. With max length.
    //Push, pop and Length are possible in solidity.

    /* Mappings */

    mapping(string => bool) public stringMapsToBoolean;

    /* Enum */
    enum Countries {Argentina, EstadosUnidos, Italia}
    Countries public country = Countries.Argentina;

    /* Structs */
    struct Student {
        string name;
        int256 yearsOld;
        string city;
        string street;
        string university;
        int256 average;
    }

    Student public studentOne;
}
