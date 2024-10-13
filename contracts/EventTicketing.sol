// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventTicketing {
    struct Ticket {
        uint256 eventId;
        address owner;
        uint256 price;
        bool isAvailable;
    }

    struct Event {
        uint256 id;
        string name;
        string date;
        uint256 ticketPrice;
        uint256 totalTickets;
        uint256 ticketsSold;
    }

    mapping(uint256 => Event) public events;
    mapping(address => mapping(uint256 => Ticket)) public tickets;
    uint256 public eventCount;

    function createEvent(string memory name, string memory date, uint256 ticketPrice, uint256 totalTickets) public {
        eventCount++;
        events[eventCount] = Event(eventCount, name, date, ticketPrice, totalTickets, 0);
    }

    function buyTicket(uint256 eventId) public payable {
        Event storage eventInfo = events[eventId];
        require(eventInfo.ticketsSold < eventInfo.totalTickets, "No tickets available");
        require(msg.value == eventInfo.ticketPrice, "Incorrect ticket price");

        tickets[msg.sender][eventId] = Ticket(eventId, msg.sender, msg.value, true);
        eventInfo.ticketsSold++;
    }

    function transferTicket(address to, uint256 eventId) public {
        Ticket storage ticket = tickets[msg.sender][eventId];
        require(ticket.isAvailable, "Ticket not available for transfer");
        require(ticket.owner == msg.sender, "You do not own this ticket");

        ticket.owner = to;
        tickets[to][eventId] = ticket; // Transfer ticket ownership
        delete tickets[msg.sender][eventId]; // Remove ticket from previous owner
    }

    function getEvent(uint256 eventId) public view returns (Event memory) {
        return events[eventId];
    }

    function getTicket(uint256 eventId) public view returns (Ticket memory) {
        return tickets[msg.sender][eventId];
    }
}
