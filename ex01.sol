// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract new1 {
    mapping(string => uint) public deposits; 
    function data(uint num,string memory name) public{
       deposits[name]=num;
    }
    struct Hi {
        string name;
        uint deposite;
    }

    Hi[] public arr;

    function Data1(uint num, string memory name) public {
        Hi memory newHi = Hi(name, num);
        arr.push(newHi);
    }
}