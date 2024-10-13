// ticket_test.move

module TicketTest {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Ticket;

    public fun test_create_ticket() {
        let ticket = Ticket.create_ticket(1, vector["Ticket 1"], 100);
        assert!(Ticket.get_ticket(ticket.id).name == vector["Ticket 1"], 1);
    }
}