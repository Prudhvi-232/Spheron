const aptosClient = new aptos.AptosClient(
	"https://fullnode.testnet.aptoslabs.com/v1"
);

const createEventBtn = document.getElementById("createEventBtn");
const buyTicketBtn = document.getElementById("buyTicketBtn");
const createEventMsg = document.getElementById("createEventMsg");
const buyTicketMsg = document.getElementById("buyTicketMsg");

async function getAccountAddress() {
	const account = await window.aptos.account();
	return account.address;
}

createEventBtn.addEventListener("click", async () => {
	const eventName = document.getElementById("eventName").value;
	const eventDate = document.getElementById("eventDate").value;
	const ticketPrice = Number(document.getElementById("ticketPrice").value);
	const totalTickets = Number(document.getElementById("totalTickets").value);

	const address = await getAccountAddress();

	const payload = {
		type: "entry_function_payload",
		function:
			"0x3ace14ac2d2ce9e9ce18d6f4bce4934157614625eb1a3ed873642c9f0cc738e6::EventTicketing::create_event",
		arguments: [address, eventName, eventDate, ticketPrice, totalTickets],
	};

	try {
		const response = await window.aptos.signAndSubmitTransaction(payload);
		createEventMsg.textContent =
			"Event created successfully: " + JSON.stringify(response);
		createEventMsg.style.color = "green";
	} catch (error) {
		console.error("Error creating event:", error);
		createEventMsg.textContent = "Error creating event: " + error.message;
		createEventMsg.style.color = "red";
	}
});

buyTicketBtn.addEventListener("click", async () => {
	const eventId = Number(document.getElementById("eventId").value);

	const address = await getAccountAddress();

	const payload = {
		type: "entry_function_payload",
		function:
			"0x3ace14ac2d2ce9e9ce18d6f4bce4934157614625eb1a3ed873642c9f0cc738e6::EventTicketing::buy_ticket",
		arguments: [address, eventId],
	};

	try {
		const response = await window.aptos.signAndSubmitTransaction(payload);
		buyTicketMsg.textContent =
			"Ticket bought successfully: " + JSON.stringify(response);
		buyTicketMsg.style.color = "green";
	} catch (error) {
		console.error("Error buying ticket:", error);
		buyTicketMsg.textContent = "Error buying ticket: " + error.message;
		buyTicketMsg.style.color = "red";
	}
});
