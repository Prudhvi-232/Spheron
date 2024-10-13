// Event.move

module Event {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Ticket;

    struct Event has key {
        id: u64,
        name: vector<u8>,
        description: vector<u8>,
        tickets: vector<Ticket.Ticket>,
    }

    public fun create_event(event_name: vector<u8>, event_description: vector<u8>): Event.Event {
        let event = Event {
            id: Event.next_id(),
            name: event_name,
            description: event_description,
            tickets: vector[],
        };
        Event.add_event(event);
        event
    }

    public fun get_event(event_id: u64): Event.Event {
        Event.get_event(event_id)
    }

    public fun add_ticket(event_id: u64, ticket: Ticket.Ticket) {
        let event = Event.get_event(event_id);
        event.tickets = vector::push_back(event.tickets, ticket);
    }
}