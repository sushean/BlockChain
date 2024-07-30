// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Lottery {
    

    struct data{
        string name;
        uint num;
        address uid;
    }
    mapping(uint => data) public numToData;//number => Data

    address user = msg.sender;

    event DataStored(string Name,uint Amount,address User);

    function BuyTicket(string memory _name , uint _num,address addr ) public{
        if((keccak256(abi.encodePacked(numToData[_num].name))==keccak256(abi.encodePacked("")))&&(keccak256(abi.encodePacked(numToData[_num].uid))==keccak256(abi.encodePacked("")))){
            numToData[_num]  = data(_name,_num,addr);
            emit DataStored(_name,_num,addr);
        }
        else 
        {
            revert();
        }
    }
}