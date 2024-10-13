module EventX::EventTicketing {
    use aptos_framework::signer;
    use std::vector;
    use std::string;

    struct Ticket has store, key {
        event_id: u64,
        owner: address,
        price: u64,
        is_available: bool,
    }

    struct Event has store, key {
        id: u64,
        name: vector<u8>,
        date: vector<u8>,
        ticket_price: u64,
        total_tickets: u64,
        tickets_sold: u64,
    }

    public fun create_event(owner: &signer, id: u64, name: vector<u8>, date: vector<u8>, ticket_price: u64, total_tickets: u64) {
        let event = Event {
            id,
            name,
            date,
            ticket_price,
            total_tickets,
            tickets_sold: 0,
        };
        move_to(owner, event);
    }

    public fun buy_ticket(buyer: &signer, event_id: u64) acquires Event, Ticket {
        let event = borrow_global_mut<Event>(event_id);
        assert!(event.tickets_sold < event.total_tickets, 1); // Ensure tickets are available

        let ticket = Ticket {
            event_id,
            owner: signer::address_of(buyer),
            price: event.ticket_price,
            is_available: true,
        };

        move_to(buyer, ticket);
        event.tickets_sold += 1; // Update tickets sold
    }

    public fun transfer_ticket(from: &signer, to: address, event_id: u64) acquires Ticket {
        let ticket = borrow_global_mut<Ticket>(signer::address_of(from));

        assert!(ticket.event_id == event_id, 2); // Ensure ticket belongs to the right event
        ticket.owner = to; // Change ownership
    }

    public fun get_event(event_id: u64): Event {
        borrow_global<Event>(event_id) // Return event details
    }

    public fun get_ticket(owner: address): Ticket {
        borrow_global<Ticket>(owner) // Return ticket details
    }
}
