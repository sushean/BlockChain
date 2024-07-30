// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract random {
    uint num;
    
    event show(uint number);
    function randomgenration(string memory _str) public {
        num = uint(keccak256(abi.encodePacked(_str)));
        emit show(num);
    }
}