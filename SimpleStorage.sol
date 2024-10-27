// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage{
    uint256 private favoriteNumber;

    uint256[] public favoriteNumbers; // Dynamic array to store multiple favorite numbers

    // Struct to store a person’s name and their favorite number
    struct Person {
        string name;            // Person's name
        uint256 favoriteNumber; // Their favorite number
}

    Person[] public people; // Array of Person structs to store multiple people's data

    // Enum to manage contract states (Active or Inactive)
    enum ContractState { 
    Active,   // State representing an active contract
    Inactive  // State representing an inactive contract
}

    ContractState public state; // State variable to store the current contract state

    function storeNumber(uint256 _favoriteNumber)   public {
        favoriteNumber = _favoriteNumber;
  }

    function getFavoriteNumber() public view returns (uint256) {
      return favoriteNumber;
  }
    function sumToFavoriteNumber() public view returns (uint256) {
     uint256 sum = 0;
     for (uint256 i = 1; i <= favoriteNumber; i++) {
         sum += i;
     }
     return sum;
 }
      function internalFunction() internal pure returns (string memory) {
        return "Hello world! If it works do not touch it"; 
    }
    function callInternalFunction() public pure returns (string memory) {
        return internalFunction();  
    }
    function externalFunction() external pure returns (string memory) {
        return "Hello world!"; 
    }
     function testExternalFunction() public view returns (string memory) {
        return this.externalFunction(); 
    }
    function addFavoriteNumber(uint256 _number) public {
    favoriteNumbers.push(_number);
}
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
    people.push(Person(_name, _favoriteNumber));
}
    function activateContract() public {
    state = ContractState.Active;
}
    function deactivateContract() public {
    state = ContractState.Inactive;
}
    function isActive() public view returns (bool) {
    return state == ContractState.Active;
}
}