// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PrimeNumberSum {
function isPrime(uint256 number) internal pure returns (bool) {
if (number <= 1) {
return false;
}
for (uint256 i = 2; i <= number / 2; i++) {
if (number % i == 0) {
return false;
}
}
return true;
}
function sumPrimes() public pure returns (uint256) {
uint256 sum = 0;
for (uint256 i = 2; i <= 300; i++) {
if (isPrime(i)) {
sum += i;
}
}
return sum;
}
}