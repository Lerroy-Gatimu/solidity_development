//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract FixedArray {
  uint [4] public fixedArray;
  constructor(){
    fixedArray [0] = 3;
    fixedArray [1] = 4;
    fixedArray [2] = 5;
    fixedArray [3] = 6;
  } 

  function getNumber2 () public view returns (uint) {
    return fixedArray [1];
  }
}
