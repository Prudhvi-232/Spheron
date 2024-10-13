// event_test.move

module EventTest {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Event;

    public fun test_create_event() {
        let event = Event.create_event(vector["Event 1"], vector["This is event 1"]);
        assert!(Event.get_event(event.id).name == vector["Event 1"], 1);
    }

    public fun test_add_ticket() {
        let event = Event.create_event(vector["Event 1"], vector["This is event 1"]);
        let ticket = Ticket.create_ticket(event.id, vector["Ticket 1"], 100);
        Event.add_ticket(event.id, ticket);
        assert!(Event.get_event(event.id).tickets.len() == 1, 1);
    }
}