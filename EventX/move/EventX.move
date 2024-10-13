// EventX.move

module EventX {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Event;
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Ticket;
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Wallet;

    // EventX module logic goes here
    public fun create_event(event_name: vector<u8>, event_description: vector<u8>): Event.Event {
        Event.create_event(event_name, event_description)
    }

    public fun create_ticket(event_id: u64, ticket_name: vector<u8>, ticket_price: u64): Ticket.Ticket {
        Ticket.create_ticket(event_id, ticket_name, ticket_price)
    }

    public fun buy_ticket(ticket_id: u64, buyer_id: u64): bool {
        let ticket = Ticket.get_ticket(ticket_id);
        let buyer = Wallet.get_wallet(buyer_id);
        if (buyer.balance >= ticket.price) {
            buyer.balance = buyer.balance - ticket.price;
            ticket.owner = buyer_id;
            true
        } else {
            false
        }
    }
}