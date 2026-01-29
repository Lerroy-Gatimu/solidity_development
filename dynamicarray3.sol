//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract DynamicArray {
    uint[] public dynamicArray;

    function pushValue(uint num) public {
        return dynamicArray.push(num);
    }

    function popValue() public {
        return dynamicArray.pop();
    }

    function getLength() public view returns (uint) {
        return dynamicArray.length;
    }

    function viewItem(uint num) public view returns (uint) {
        return dynamicArray[num];
    }

    function sumArray() public view returns (uint sum) {
        for (uint num = 0; num < dynamicArray.length; num++) sum += num;
    }
}
