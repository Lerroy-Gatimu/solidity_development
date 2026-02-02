//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract ControlStructures {
  function checkAge (uint256 Age) public pure returns (string memory) {
    if (Age < 13) {
      return "Child";}

      else if (Age <= 19) {return "Teen";}

      else if (Age <= 65) {return "Adult";} 

      else {return "Senior";}
  }

  function sumUpTo(uint256 n) public pure returns (uint256) {
    uint256 sum = 0;
    uint256 i = 1;

    while (i <= n) {
        sum += i;
        i++;
    }

    return sum;
}
}