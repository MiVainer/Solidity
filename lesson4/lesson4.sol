// SPDX-License-Identifier: MIT

// Строки в Solidity

pragma solidity ^0.8.26;

contract Demo {
    mapping (address => uint) public payments;

    string public myStr = "test"; //storage

    address public myAddr = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB; //хранение адреса

    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;
    }

    function transferTo(address targetAddr, uint amount) public {
        address payable _to = payable(targetAddr);
        _to.transfer(amount);
    }





    function getBalance(address targetAddres) public view returns(uint) { //получаем баланс на запрошенном адресе
        return targetAddres.balance;
    }

    function demo(string memory newValueStr) public { // передали переменную в функцию
        string memory myTempStr = "temp";
        myStr = "new value";
    } 
}