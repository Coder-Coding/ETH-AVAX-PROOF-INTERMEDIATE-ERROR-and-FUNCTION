
## Metacrafters Project of Function and Error handling
This repository contains the source code for the  `MyContract_of_error_handling` smart contract. The contract is written in Solidity version 0.8.18 and implements the require(), assert() and revert() function, along with a modifier and three different function.

## Description
I created a `MyContract_of_error_handling` which performs three function and an error handeling function is provided inside every function.

## Getting Started

Follow the steps below to get started with the `MyContract_of_error_handling` smart contract:

1. Clone this repository to your local machine.
2. Open the project in your preferred Ethereum development environment.
3. Compile the smart contract using the Solidity compiler.
4. Deploy the contract to your preferred Ethereum network.
5. Interact with the contract using the provided functions.

## Contract Details

### Description

The `MyContract_of_error_handling` contract allows the contract owner to add,remove and check the address of the contract and only owner is allowed to use the function since modifiers are used.

### Functions

#### `constructor()`

The constructor function is executed once during contract deployment. It sets the contract owner to the address of the message sender.

#### `modifier onlyOwner`
A condition is put inside this modifier using require() which will be cheacked every time when a function with this modifier will be called.

#### `Add_Amount(uint256 amount)`
This function is used to add some value into our deployed contract and to prevent user from giving the amount value as 0 a condition is put using require() key word which takes to parameter one is condition and other is messahge(optional) so when ever the condition is wrong require() keyword throws error and desplay the meassage if provised.


#### `Remove(uint256 amount)`
This function is used to remove/delete some value/fund provided by user and to prevent user from deleting more fund then present in the current address assert() keyword is used which takes oly one input. And throws an error is condition is false.

#### `heck_sender_address(address ad)`
This function is used to take address from user and using revert() keyword check wheather the provided address matches the sender address.And if it does not matches then program stop then and their and revert the contract to it's initially condition saving some gas for execution of program.

## Usage

To use the `MyContract_of_error_handling` smart contract, follow these steps:

1. Deploy the contract by calling the constructor function.
2. As the contract owner, call the all three function and provide the amount to withdraw, dremove, and check the address.
3. Verify that the all conditions are satisfied and the transfer is successful.
4. To check the current balance of the contract, click on `balance` state variable.

## License

This project is licensed under the MIT License.

## Credits

This program/contract is a solution to the project task provided by MetaCrafters.
