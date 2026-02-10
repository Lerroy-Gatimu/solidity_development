// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

abstract contract Vehicle {
    string public brand;

    constructor(string memory _brand) {
        brand = _brand;
    }

    function description() public view virtual returns (string memory);
}

contract Car is Vehicle {
    uint public doors;

    constructor(string memory _brand, uint _doors) Vehicle(_brand) {
        doors = _doors;
    }

    function description() public view override returns (string memory) {
    return string(abi.encodePacked("This is a car: ", brand));
}
}