// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Lottery {
    
    mapping(string => uint) public Ticketbuy;
    mapping(uint => bool) public TicketTaken;
    
    function buyTicket(string memory name,uint ticketNumber) public  {
        if(TicketTaken[ticketNumber])
        {
            return;   
        }
        else 
        {
            Ticketbuy[name] = ticketNumber;
            TicketTaken[ticketNumber] = true;    
        }
    }
}