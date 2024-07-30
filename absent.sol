// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
contract addressToTicket {
    mapping(address => uint256) public userTickets;
    event TicketPurchased(address indexed buyer, uint256 ticketNumber);
    function storeaddress(address user, uint256 ticketNumber) public {
        require(userTickets[user] == 0, "User has already purchased a ticket.");
        userTickets[user] = ticketNumber;
        emit TicketPurchased(user, ticketNumber);
    }   
}

contract TicketToAddress {
    mapping(uint256 => address) public tickets;
    event TicketAssigned(uint256 indexed ticketNumber, address buyer);
    function storeTicketToAddress(uint256 ticketNumber, address user) public {
        require(tickets[ticketNumber] == address(0), "Ticket number already taken.");
        tickets[ticketNumber] = user;
        emit TicketAssigned(ticketNumber, user);
    }
}\