//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract ImpCalc {
  uint256 result =0;

  function add (uint256 num) public {
    result += num;
  }

  function subtract (uint256 num) public {
    result -= num;
  }

  function multiply (uint256 num) public {
    result *= num;
  }

  function divide (uint256 num) public {
    result /= num;
  }

  function Result () public view returns (uint) {
    return result;
  }

}

contract FixedArray {
  uint [5] public fixedArray;

  constructor(){
    fixedArray [0] = 1;
    fixedArray [1] = 2;
    fixedArray [2] = 3;
    fixedArray [3] = 4;
    fixedArray [4] = 5;
  }

  function getNumber () public view returns (uint) {
    return fixedArray [2];
  }

  function sumArray () public view returns (uint sum) {
    for (uint num = 0; num < fixedArray.length; num++)
    sum += fixedArray[num];
  }
}