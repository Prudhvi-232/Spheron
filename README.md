# 🎟️ **Spheron: Decentralized Event Ticketing System** 🚀

[![Spheron](https://img.shields.io/badge/Spheron-Hackathon_Project-blue.svg)](https://github.com/Prudhvi-232/Spheron)
[![Blockchain](https://img.shields.io/badge/Blockchain-Ethereum%20%26%20Aptos-9cf.svg)](#-tech-stack)

## Overview

**Spheron** is a decentralized event ticketing system that allows users to create and manage events while enabling decentralized ticket purchases. By integrating with Ethereum and Aptos blockchains, the system ensures that ticket sales are transparent, secure, and verifiable.

This project is ideal for event organizers looking to bypass traditional centralized ticketing systems and adopt a blockchain-powered approach.

---

## 🛠 **Tech Stack**

The project employs the following technologies:

| Technology        | Description                                                   |
| ----------------- | ------------------------------------------------------------- |
| **HTML5**         | Provides the structure of the web pages                       |
| **CSS3**          | Styles the application for a clean and responsive design      |
| **JavaScript**    | Frontend scripting for interactivity and blockchain transactions|
| **Web3.js**       | JavaScript library to interact with Ethereum nodes            |
| **Aptos SDK**     | JavaScript library to connect to the Aptos blockchain         |
| **Aptos Wallet**  | Wallet to handle Aptos transactions                           |

---

## 🚀 **Features**

### 🎉 **Create Events**
- Easily create events by providing details like **Event Name**, **Event Date**, **Ticket Price**, and **Total Tickets**.
- All event details are stored on the blockchain to ensure transparency and prevent tampering.

### 🎟️ **Buy Tickets**
- Users can purchase event tickets by inputting the **Event ID**.
- Each transaction is validated and recorded on the blockchain, offering verifiable ownership of tickets.

### 🔗 **Blockchain Integration**
- **Ethereum**: Powered by `Web3.js` for interacting with Ethereum smart contracts.
- **Aptos**: Uses the **Aptos SDK** to communicate with the Aptos blockchain for ticketing functionalities.

---

## 🖥️ **Directory Structure**

Here's the current structure of the project:


Spheron 

│
├── .aptos/config.yaml        
├── contracts/              
│   ├── EventTicketing.sol    
│   └── EventTicketing.move    
├── docs/                    
│   ├── index.html    
│   ├── style.css          
│   └── script.js           
├── EventX/       
│   ├── sources/main.move      
│   └── move.toml            
└── README.md               


---

## 🌐 **Getting Started**

### Prerequisites

- **MetaMask** (for Ethereum transactions) or **Aptos Wallet** (for Aptos transactions)
- A browser that supports JavaScript and Web3 (like Google Chrome)

### How to Run

1. **Clone the Repository**:
   
   git clone https://github.com/Prudhvi-232/Spheron.git
   

2. **Open the Project**:
   - Navigate to the folder and open `index.html` in any modern browser.

3. **Start Interacting**:
   - You can now create events and purchase tickets through the web interface.

---

## 📄 **Usage**

### 🎯 **Creating an Event**
1. Navigate to the event creation form.
2. Enter event details like **name**, **date**, **ticket price**, and **total tickets**.
3. Click **"Create Event"** to register the event on the blockchain.

### 🎟️ **Buying Tickets**
1. Enter the **Event ID**.
2. Confirm the transaction via **MetaMask** or **Aptos Wallet**.
3. Your ticket is now securely recorded on the blockchain.

---

## 🛠️ **Smart Contracts**

The smart contracts used to handle event creation and ticket purchases are located in the `/contracts` directory. 
- The **Solidity** contract manages Ethereum-based events and tickets.
- The **Move** contract governs Aptos-based ticketing.

---

## 🤝 **Contributing**

We welcome contributions! If you have suggestions or improvements, please follow these steps:

1. **Fork** the repository.
2. **Create a branch** for your feature: `git checkout -b feature/your-feature`.
3. **Commit your changes**: `git commit -m 'Add some feature'`.
4. **Push to the branch**: `git push origin feature/your-feature`.
5. **Submit a Pull Request**.

---

## 📄 **License**

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

---

## 🌍 **Live Demo**

You can check out the live demo of the project at [Spheron Live Demo](https://prudhvi-232.github.io/Spheron/).

## 🔗 **Blockchain Transactions**

You can view blockchain transactions [here](https://explorer.aptoslabs.com/txn/0x153376efdc84faf5dc3ad99bd482fb9b30c71dc580925ca4cf974577674e1118/changes?network=testnet).

Join us in revolutionizing event ticketing with blockchain technology! 🎟️💡