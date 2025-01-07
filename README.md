# SimpleStorage Contract

This Solidity smart contract demonstrates the use of various data types, functions, and visibility specifiers. It serves as a foundational example for building more complex 
smart contracts. Below are the features and functions i implemented during the whole process.

## Features

### Data Types and Variables
* **`favoriteNumber`**: A private integer to store a single favorite number.
* **`favoriteNumbers`**: A public array to store multiple favorite numbers.
* **`Person`**: A struct to represent a person with a name and favorite number.
* **`people`**: A public array of `Person` structs to store multiple people's data.
* **`ContractState`**: An enum to define two contract states: Active and Inactive.
* **`state`**: A public variable to store the current contract state.

### Functions
* **`storeNumber`**: This fuction  Sets a new favorite number.
* **`getFavoriteNumber`**: Retrieves the stored favorite number.
* **`isGreaterThan`**: Compares the favorite number to a given value.
* **`sumToFavoriteNumber`**: Calculates the sum from 1 to the favorite number.
* **`internalFunction`**: An internal function accessible only within the contract.
* **`callInternalFunction`**: A public wrapper function to expose the internal function.
* **`externalFunction`**: An external function accessible only from outside the contract.
* **`testExternalFunction`**: A test function to call the external function.
* **`addFavoriteNumber`**: Adds a number to the `favoriteNumbers` array.
* **`addPerson`**: Adds a person to the `people` array.
* **`activateContract`**: Sets the contract state to Active.
* **`deactivateContract`**: Sets the contract state to Inactive.
* **`isActive`**: Checks if the contract is currently active.
