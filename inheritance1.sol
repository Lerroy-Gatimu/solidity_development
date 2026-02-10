// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Animal {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function makeSound() public pure virtual returns (string memory) {
        return "Some generic animal sound";
    }
}

contract Dog is Animal {
    constructor(string memory _name) Animal(_name) {}

    // Override the parent function
    function makeSound() public pure override returns (string memory) {
        return "Woof!";
    }

    function wagTail() public pure returns (string memory) {
        return "Tail wagging!";
    }
}