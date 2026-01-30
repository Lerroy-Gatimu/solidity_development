//SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

contract CarDealership {
  struct car {
    string name;
    uint year;
    string colour;
    bool onSale; 
    uint256 price;
    uint carId;
  }

  mapping (uint => car) public cars;
  car [] public carInventory;

  function registerCar (string memory name, uint year, string memory colour, bool onSale, uint256 price, uint carId) public {
    car memory newCar = car ({
      name: name,
      year: year,
      colour: colour,
      onSale: onSale,
      price: price,
      carId: carId
    });
    cars [carId] = newCar;
    carInventory.push(newCar);
  }

   function countCars () public view returns (uint) {
     return carInventory.length;
    }

    function updatePrice (uint carId, uint256 newPrice) public {
      cars[carId].price = newPrice;
    }
}