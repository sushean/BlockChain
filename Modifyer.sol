// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract ModifierTesting{
    uint public num;
    address public owner;

    modifier onlyOwner(){
        require(owner == msg.sender,"Not Owner");
        _; //used for function body replacement
    }

    constructor() {
        owner = msg.sender;
    }
    function getEth() public payable{
        num = msg.value;
        bool check  = payable(owner()).send(num/2);
        require(check,"not sent");
    }

    function setOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    function setNum(uint _num) public onlyOwner {
        num = _num;
    }
}