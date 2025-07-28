# 🏗️ Storage Factory Smart Contract

This project contains a simple Solidity-based smart contract called `StorageFactory`. It demonstrates the use of **contract deployment**, **storage**, and **inter-contract communication** using `SimpleStorage` contracts.

---

## 📦 Files

- `StorageFactory.sol` – Main factory contract that creates and interacts with multiple `SimpleStorage` contracts.
- `SimpleStorage.sol` – A basic contract that stores and retrieves a number.

---

## 🛠️ Features

- Deploys multiple `SimpleStorage` contracts
- Stores each deployed contract in an array
- Allows updating and reading data from each child contract

---

## 🧠 How It Works

1. `StorageFactory` deploys `SimpleStorage` contracts using `createSimpleStorageContract()`.
2. The deployed contracts are stored in an array `simpleStorageArray`.
3. You can store a number in any deployed contract using `sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)`.
4. Retrieve the stored number using `sfGet(uint256 _simpleStorageIndex)`.

---

## ✨ Sample Functions

```solidity
function createSimpleStorageContract() public;
function sfStore(uint256 _index, uint256 _number) public;
function sfGet(uint256 _index) public view returns (uint256);
