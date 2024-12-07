// SPDX-License-Identifier: MIT

// Строки в Solidity

pragma solidity ^0.8.26;

contract Demo {
    //Struct
    struct Payment {
        uint amount;
        uint timestamp;
        address from;
        string message;
    }

    struct Balance {
        uint totalPayments;
        mapping(uint => Payment) payments;
    }

    mapping(address => Balance) public balances;
    function getPayment(address _addr, uint _index) public view returns(Payment memory) {
        return balances[_addr].payments[_index];
    }



    function pay(string memory message) public payable {
        uint paymentNum = balances[msg.sender].totalPayments;
        balances[msg.sender].totalPayments++;

        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );
        balances[msg.sender].payments[paymentNum] = newPayment;
    }



    // //Byte
    // bytes32 public myVar = "test";
    // bytes public myDynVar = "test";
    
    // function demo() public view returns(uint) {
    //     return myDynVar.length;
    // }
    
    // function demo1() public view returns(bytes1) {
    //     return myDynVar[0];
    // }




    // Array

    // uint[3][2] public items; //Массив чисел

    // uint[] public array; //Динамический массив

    // function demo() public { //Заполнение массива
    //     items = [
    //         [3,4,5],
    //         [6,7,8]
    //     ];
    // }

    // function demo1() public { //Заполнение массива, подходит только для динамического массива
    //         array.push(4);
    //         array.push(5);
    // }
    
    // function sampleMemory() public view returns(uint[] memory) 
    //     uint[] memory tempArray = new uint[](10);
    //     tempArray[0] = 1;
    //     return tempArray;
    // }





    // //Enum
    // enum Status { Paid, Delivered, Received }
    // Status public currentStatus;

    // function pay() public {
    //     currentStatus = Status.Paid;
    // }

    // function delivered() public {
    //     currentStatus = Status.Delivered;
    // }

}
