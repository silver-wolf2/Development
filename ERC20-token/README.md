# Token Project

Welcome to the **ERC20 - my first token project**! This repository contains the implementation of a standard ERC20 token built using Solidity on the Ethereum blockchain. The project demonstrates the creation, deployment, and interaction with a fungible token contract.

---

## Features

- **ERC20 Compliance**: Implements the ERC20 token standard, ensuring compatibility with wallets, exchanges, and other smart contracts.
- **Minting**: Ability to mint new tokens to specific addresses.
- **Transfer Functionality**: Secure transfer of tokens between accounts.
- **Allowance System**: Support for token approvals and transfers on behalf of another user.
- **Event Logging**: Transparent transaction logging through standard ERC20 events (`Transfer` and `Approval`).

---

## Project Structure

- **`contracts/`**: Contains the Solidity source code.
  - `Token.sol`: The ERC20 token contract implementation.
- **`test/`**: Unit tests for the token contract to ensure functionality and compliance.
- **`scripts/`**: Scripts for deploying and interacting with the contract.
- **`.env`**: Environment file to store private keys and RPC URLs.

---

## Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js** (for Hardhat or other tools)
- **npm/yarn** (Node package manager)
- **Solidity** (via Hardhat or Foundry)
- **Git**

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/token-project.git
   cd token-project