// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract MyFirstContract {
    int public num1;
    uint public num2;
    address public user;
    bool public isTrue;
    string  public name;
    bytes public hash;
    uint[10] public arr1;
    uint[] public arr2;
    mapping(address => uint) public deposits;

    function addNumber(uint _num) public {
        num1 = int(_num);
        num2 = _num;
    }

    function getNum1() public view returns (int){
        return num1;
    }
    function add(uint _num1 , uint _num2) public pure returns (uint)
    {
        return _num1 + _num2;
    }
}