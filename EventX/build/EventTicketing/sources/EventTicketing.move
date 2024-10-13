module 0x3ace14ac2d2ce9e9ce18d6f4bce4934157614625eb1a3ed873642c9f0cc738e6::EventTicketing {
    use aptos_framework::signer;

    struct Ticket has store, key, copy {
        event_id: u64,
        owner: address,
        price: u64,
        is_available: bool,
    }

    struct Event has store, key, copy {
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

    public fun buy_ticket(buyer: &signer, event_id: u64) acquires Event {
        let event_owner = signer::address_of(buyer); 
        let event = borrow_global_mut<Event>(event_owner); 
        assert!(event.tickets_sold < event.total_tickets, 1); 

        let ticket = Ticket {
            event_id,
            owner: event_owner,
            price: event.ticket_price,
            is_available: true,
        };

        move_to(buyer, ticket);
        event.tickets_sold = event.tickets_sold + 1; 
    }

    public fun transfer_ticket(from: &signer, to: address, event_id: u64) acquires Ticket {
        let ticket = borrow_global_mut<Ticket>(signer::address_of(from));
        assert!(ticket.event_id == event_id, 2); 
        ticket.owner = to; 
    }

    public fun get_event(owner: address): Event acquires Event {
        *borrow_global<Event>(owner) 
    }

    public fun get_ticket(owner: address): Ticket acquires Ticket {
        *borrow_global<Ticket>(owner) 
    }
}
