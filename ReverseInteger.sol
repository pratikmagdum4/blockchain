// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ReverseInteger {
function reverse(uint256 n) public pure returns (uint256) {
require(n>=0,"Input must be a positive integer");
uint256 reversed = 0;
uint256 remainder;
while (n != 0) {
remainder = n % 10;
reversed = reversed * 10 + remainder;
n = n / 10;
}
return reversed;
}
}