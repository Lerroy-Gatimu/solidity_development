// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BoolMatrix {
    bool[3][2] public matrix;  // 2 rows × 3 columns

    constructor() {
        // row 0
        matrix[0][0] = true;
        matrix[0][1] = false;
        matrix[0][2] = true;
        // row 1
        matrix[1][0] = false;
        matrix[1][1] = true;
        matrix[1][2] = false;
    }

    function flip(uint row, uint col) external {
        require(row < 2 && col < 3, "Index out of bounds");
        matrix[row][col] = !matrix[row][col];
    }

    function getValue(uint row, uint col) external view returns (bool) {
        require(row < 2 && col < 3, "Index out of bounds");
        return matrix[row][col];
    }
}