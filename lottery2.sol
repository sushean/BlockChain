// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Lottery {
    

    struct data{
        string name;
        uint num;
    }
    data[] public dataArray;//worst Approach

    mapping(string => uint) public nameToNum;//name =>number
    mapping(uint => bool) public numExists;

    mapping(uint =>string) public numToName;//number => name 
    mapping(uint => data) public numToData;//number => Data

    event DataStored(string Name,uint Amount);

    function BuyTicket(string memory _name , uint _num ) public{
        if(keccak256(abi.encodePacked(numToData[_num].name))==keccak256(abi.encodePacked(""))){
            numToData[_num]  = data(_name,_num);
            emit DataStored(_name,_num);
        }
        else 
        {
            revert();
        }
    }
    function BuyTicket1(string memory _name , uint _num ) public{
        require(keccak256(abi.encodePacked(numToData[_num].name))==keccak256(abi.encodePacked("")),"Number already Exist!!");
            numToData[_num]  = data(_name,_num);
    }
        function BuyTicket2(string memory _name , uint _num ) public{
        if(keccak256(abi.encodePacked(numToName[_num]))==keccak256(abi.encodePacked(""))){
            numToName[_num] = _name;
        }
        else 
        {
            revert();
        }
    }
}