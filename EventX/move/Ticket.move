// Ticket.move

module Ticket {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Event;

    struct Ticket has key {
        id: u64,
        event_id: u64,
        name: vector<u8>,
        price: u64,
        owner: u64,
    }

    public fun create_ticket(event_id: u64, ticket_name: vector<u8>, ticket_price: u64): Ticket.Ticket {
        let ticket = Ticket {
            id: Ticket.next_id(),
            event_id: event_id,
            name: ticket_name,
            price: ticket_price,
            owner: 0,
        };
        Ticket.add_ticket(ticket);
        ticket
    }

    public fun get_ticket(ticket_id: u64): Ticket.Ticket {
        Ticket.get_ticket(ticket_id)
    }
}