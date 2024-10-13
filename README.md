# 🎟️ **Spheron: Decentralized Event Ticketing System** 🚀

[![Spheron](https://img.shields.io/badge/Spheron-Hackathon_Project-blue.svg)](https://github.com/Prudhvi-232/Spheron)
[![Blockchain](https://img.shields.io/badge/Blockchain-Ethereum%20%26%20Aptos-9cf.svg)](#technologies)

## Overview

**Spheron** is an innovative decentralized event ticketing platform, leveraging blockchain technology to revolutionize how events and tickets are managed. The system provides a secure and transparent way to create events, buy tickets, and ensure verifiable ownership of tickets—all powered by Ethereum and Aptos blockchains.

---

## 🛠 **Tech Stack**

This project employs the following technologies:

| Technology        | Description                        |
| ----------------- | ---------------------------------- |
| **Solidity**      | Ethereum smart contract language   |
| **Move**          | Smart contract programming for Aptos blockchain |
| **Web3.js**       | JavaScript library to interact with Ethereum blockchain nodes |
| **Aptos SDK**     | Aptos-specific library for blockchain integration |
| **Ethers.js**     | Ethereum wallet interactions and transaction handling |
| **JavaScript**    | Frontend scripting language for logic and blockchain interactions |
| **HTML5**         | Markup language for structuring the web interface |
| **CSS3**          | Styling the interface for a responsive design |
| **MetaMask**      | Browser extension for managing Ethereum wallets |
| **Aptos Wallet**  | Used for managing Aptos-based transactions |

---

## 🚀 **Features**

### 🎉 **Create Events**
Organizers can create events with the following details:
  - **Event Name** 📝
  - **Event Date** 📅
  - **Ticket Price** 💲
  - **Total Tickets** 🎫

Once created, the event data is stored on the blockchain, ensuring tamper-proof integrity.

### 🎟️ **Buy Tickets**
Users can securely purchase tickets by entering the **Event ID**. Each purchase is processed as a blockchain transaction, offering verifiable proof of ticket ownership.

### 🔗 **Blockchain Integration**
  - **Ethereum**: Smart contracts written in Solidity manage the event creation and ticket sales.
  - **Aptos**: Utilizes Move contracts for fast and scalable event management and ticketing on the Aptos blockchain.

---

## 🔧 **Getting Started**

### Prerequisites

- **Node.js** (v14.x or later)
- **MetaMask** or **Aptos Wallet** for handling transactions.

### Installation Steps

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Prudhvi-232/Spheron.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd Spheron
   ```

3. **Install dependencies**:
   ```bash
   npm install
   ```

4. **Run the application**:
   ```bash
   npm start
   ```

---

## 📄 **Usage**

### Creating an Event:
1. Enter the **Event Name**, **Date**, **Ticket Price**, and **Total Tickets**.
2. Click the **"Create Event"** button.
3. Your event will now be stored on the blockchain.

### Purchasing Tickets:
1. Input the **Event ID**.
2. Click **"Buy Ticket"** and confirm the transaction via MetaMask or Aptos Wallet.

---

## 📁 **Folder Structure**

```bash
Spheron/
│
├── index.html        # Main HTML file
├── style.css         # CSS for styling
├── script.js         # JavaScript for app logic and blockchain interaction
├── contracts/        # Solidity and Move smart contracts
└── README.md         # Documentation
```

---

## 📜 **Contributing**

Contributions are welcome! To contribute:
1. **Fork** the repository.
2. **Create a branch** for your feature (`git checkout -b feature/your-feature`).
3. **Commit your changes** (`git commit -m 'Add your feature'`).
4. **Push to the branch** (`git push origin feature/your-feature`).
5. **Submit a Pull Request**.

---

## 📄 **License**

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

---

**Join us in decentralizing the future of event ticketing!** 💡
