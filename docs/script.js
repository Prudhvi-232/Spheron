const aptosClient = new aptos.AptosClient(
	"https://fullnode.testnet.aptoslabs.com/v1"
);

const createEventBtn = document.getElementById("createEventBtn");
const buyTicketBtn = document.getElementById("buyTicketBtn");
const checkEventBtn = document.getElementById("checkEventBtn");
const createEventMsg = document.getElementById("createEventMsg");
const buyTicketMsg = document.getElementById("buyTicketMsg");
const checkEventMsg = document.getElementById("checkEventMsg");

async function getAccountAddress() {
	const account = await window.aptos.account();
	return account.address;
}

const contractAddress =
	"0x3ace14ac2d2ce9e9ce18d6f4bce4934157614625eb1a3ed873642c9f0cc738e6";

// Create Event Functionality
createEventBtn.addEventListener("click", async () => {
	const eventName = document.getElementById("eventName").value;
	const eventDate = document.getElementById("eventDate").value;
	const ticketPrice = Number(document.getElementById("ticketPrice").value);
	const totalTickets = Number(document.getElementById("totalTickets").value);

	const address = await getAccountAddress();

	const payload = {
		type: "entry_function_payload",
		function: `${contractAddress}::EventTicketing::create_event`,
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

// Buy Ticket Functionality
buyTicketBtn.addEventListener("click", async () => {
	const eventId = Number(document.getElementById("eventId").value);
	const address = await getAccountAddress();

	const payload = {
		type: "entry_function_payload",
		function: `${contractAddress}::EventTicketing::buy_ticket`,
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

// Check Event Functionality
checkEventBtn.addEventListener("click", async () => {
	const eventId = Number(document.getElementById("checkEventId").value);

	const payload = {
		type: "entry_function_payload",
		function: `${contractAddress}::EventTicketing::get_event`,
		arguments: [eventId],
	};

	try {
		const response = await aptosClient.viewFunction(payload);
		checkEventMsg.textContent =
			"Event details: " + JSON.stringify(response);
		checkEventMsg.style.color = "green";
	} catch (error) {
		console.error("Error checking event:", error);
		checkEventMsg.textContent = "Error checking event: " + error.message;
		checkEventMsg.style.color = "red";
	}
});
