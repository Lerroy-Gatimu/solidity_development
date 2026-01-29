//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract ImpCalc {
  uint256 result =0;

  function Add (uint256 num) public {
    result += num;
  }

  function Subtract (uint256 num) public {
    result -= num;
  }

  function Multiply (uint256 num) public {
    result *= num;
  }

  function Divide (uint256 num) public {
    result /= num;
  }

  function Result () public view returns (uint) {
    return result;
  }

}