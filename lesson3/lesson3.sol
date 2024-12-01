// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Demo {
    uint8 public myVal = 254;

    function inc() public {
        // myVal += 1;
        unchecked { // отслеживает переполнение (в данном случае не даст инерементровать больше 255)
            myVal ++; // or myVal --;
        }
    }




    // bool myBool; // state variable
    // unsigned integers
    // uint public myUint = 42;

//    uint public maximum;
//    function demo() public {
//        maximum = type(uint8).max;
//    }


//    function demo(uint _inputUint) public {
//        uint localUint = 42;
//        localUint + 1;
//        localUint - 1;
//        localUint * 2;
//        localUint / 2;
//    }

    //signed integers

//    int public myInt = -42;
//    int8 public mySmallInt = -1;



}