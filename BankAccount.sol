// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract BankAccount {
string public depositorName;
uint256 public accountNumber;
string public accountType;
uint256 public balance;
constructor(string memory _depositorName, uint256 _accountNumber, string memory
_accountType) {
depositorName = _depositorName;
accountNumber = _accountNumber;
accountType = _accountType;
balance = 0;

}
function deposit(uint256 amount) public {
require(amount > 0, "Deposit amount must be greater than 0");
balance += amount;
}
function withdraw(uint256 amount) public {
require(amount > 0, "Withdrawal amount must be greater than 0");
require(amount <= balance, "Insufficient balance");
balance -= amount;
}
function displayBalance() public view returns (uint256) {
return balance;
}
function displayNameAndBalance() public view returns (string memory, uint256) {
return (depositorName, balance);
}
}