// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentInformation {
struct Student {
string name;
uint256 rollNo;

uint256 percentage;
string email;
uint256 dob; // Date of Birth as Unix timestamp
string studentClass;
uint256 admissionYear;
}

mapping(address =>Student) public students;

function storeStudentData(
string memory _name,
uint256 _rollNo,
uint256 _percentage,
string memory _email,
uint256 _dob,
string memory _studentClass,
uint256 _admissionYear
) public {
students[msg.sender] = Student({
name: _name,
rollNo: _rollNo,
percentage: _percentage,
email: _email,

dob: _dob,
studentClass: _studentClass,
admissionYear: _admissionYear
});
}
}