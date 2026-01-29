//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract SumArray {
    uint[3] Array1;

    constructor() {
        Array1[0] = 10;
        Array1[1] = 20;
        Array1[2] = 30;
    }

    function sumAll() public view returns (uint sum) {
        for (uint num = 0; num < Array1.length; num++) sum += Array1[num];
    }
}
