### Lottery – Decentralized Raffle Smart Contract

Lottery is a simple Ethereum smart contract that allows multiple users to participate by sending ETH, and then a random winner is selected to receive the total prize pool. This project is part of my Solidity learning path and explores randomness, access control, and user participation in decentralized apps (dApps).

⸻

#### 🎯 Project Goals
	•	Allow users to enter the lottery by sending ETH
	•	Let only the contract owner pick a winner
	•	Transfer the entire balance to the selected winner
	•	(Optionally) Integrate Chainlink VRF for secure randomness

⸻

#### 🛠️ Technologies Used
	•	Solidity (v0.8.x)
	•	(Optional) Chainlink VRF – Verifiable random number generation

⸻

#### 🧠 Learning Objectives
	•	Understand how Ethereum contracts hold and send ETH
	•	Work with arrays and addresses in Solidity
	•	Implement access control (e.g. onlyOwner)
	•	(Optional) Explore Chainlink VRF for true randomness in production