// eventx_test.move

module EventXTest {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::EventX;
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Event;
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Ticket;
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Wallet;

    public fun test_create_event() {
        let event = EventX.create_event(vector["Event 1"], vector["This is event 1"]);
        assert!(Event.get_event(event.id).name == vector["Event 1"], 1);
    }

    public fun test_create_ticket() {
        let event = EventX.create_event(vector["Event 1"], vector["This is event 1"]);
        let ticket = EventX.create_ticket(event.id, vector["Ticket 1"], 100);
        assert!(Ticket.get_ticket(ticket.id).name == vector["Ticket 1"], 1);
    }

    public fun test_buy_ticket() {
        let event = EventX.create_event(vector["Event 1"], vector["This is event 1"]);
        let ticket = EventX.create_ticket(event.id, vector["Ticket 1"], 100);
                let buyer = Wallet.create_wallet(1, 1000);
        assert!(EventX.buy_ticket(ticket.id, buyer.id), 1);
        assert!(Ticket.get_ticket(ticket.id).owner == buyer.id, 1);
    }
}