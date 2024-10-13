const createEventBtn = document.getElementById('createEventBtn');
const buyTicketBtn = document.getElementById('buyTicketBtn');

createEventBtn.addEventListener('click', async () => {
    const eventName = document.getElementById('eventName').value;
    const eventDate = document.getElementById('eventDate').value;
    const ticketPrice = document.getElementById('ticketPrice').value;
    const totalTickets = document.getElementById('totalTickets').value;

    // Replace with your Aptos API call to create an event
    console.log("Creating event:", { eventName, eventDate, ticketPrice, totalTickets });
});

buyTicketBtn.addEventListener('click', async () => {
    const eventId = document.getElementById('eventId').value;

    // Replace with your Aptos API call to buy a ticket
    console.log("Buying ticket for event ID:", eventId);
});
