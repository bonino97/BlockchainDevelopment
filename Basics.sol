// SPDX-License-Identifier: MIT 

pragma solidity 0.6.12;

contract Basics {
    /* integer, strings, boolean, bytes */
    /* array, enum, structs, mappings (dictionary in python) */
    
    /* Integers */
    int public normalInteger = 1; // int = int256
    int8 public numberTwo = 2; // 2^8 = 256
    int16 public numberThree = 3; // 2^16 = 65000 
    uint8 public numberFour = 10; // Only positives numbers.
    
    /* Boolean */
    bool public booleanVar = true;
    
    /* String */
    string public stringVar = "Testing String Var";
    string public name;
    
    /* Bytes */
    bytes public byteVar = 'abc'; // 0x616263
    
    /* Arrays */
    string[] public dynamicArray; //Dynamic Array. Without max.
    string[3] public fixedOrStaticArray; //Fixed length array. With max length.
    //Push, pop and Length are possible in solidity.
    
    /* Mappings */
    
    mapping(string => bool) public stringMapsToBoolean ;
    
    /* Enum */
    enum Countries { Argentina, EstadosUnidos, Italia }
    Countries public country = Countries.Argentina;
    
    /* Structs */
    struct Student {
        string name;
        int yearsOld;
        string city;
        string street;
        string university;
        int average;
    }
    
    Student public studentOne;
    Student public studentTwo;
    
    int public sum = 0;
    
    /* Functions */
    
    function setSum(int fNumberOne, int fNumberTwo) public {
        sum += fNumberOne + fNumberTwo;
    }
    
    function getSum() public view returns(int) { 
         return sum;
    }
    
    function getMultipleValues() public view returns(int8, int16, int) { 
         return (numberTwo, numberThree, numberFour);
    }
    
    function getMultipleValuesWithAnotherParameters() public view returns(int one, int two, int three) { 
         return (numberTwo, numberThree, numberFour);
    }
    
    function getPureFunction() public pure returns(int) {
        return 10; // Doesnt modify and returns nothing inside the Smart Contract, just return a Inside Function Value.
    }
    
    function setString(string memory _name) public {
        name = _name;
    }
    
    function getString() public view returns(string memory studentName) {
        return name;
    }
    
    function setVariables() public {
        dynamicArray.push('Push Something!');
        fixedOrStaticArray[1] = 'Peruzzi';
        stringMapsToBoolean['Peruzzi'] = true;
        
        studentOne.name = 'Juan Cruz';
        studentOne.yearsOld = 24;
        studentOne.city = 'Corral de Bustos';
        studentOne.street = 'Santa Fe';
        studentOne.university = 'UAI';
        studentOne.average = 6;
        
        Student memory tempStudent = Student({
            name: 'Milagros',
            yearsOld: 19,
            city: 'Corral de Bustos',
            street: 'Uruguay',
            university: 'UNR',
            average: 8
        });
        
        studentTwo = tempStudent;
    }
    
    function swap() public {
        int swapTemp = normalInteger; // No need to pay gas fee for local variables
        normalInteger = 10;
        sum = swapTemp;
    }
}