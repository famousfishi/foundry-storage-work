// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256[] favouriteNumbers;

    //struct to hold different data types
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    struct Car {
        string brand;
        uint year;
    }

    Person[] public people;

    Car[] public cars;

    mapping(string => uint256) public nameToFavouriteNumber;

    function addPersonToPeople(string memory _name, uint256 _number) public {
        people.push(Person(_number, _name));
        nameToFavouriteNumber[_name] = _number;
    }

    function addCarToCars(string memory _brand, uint _year) public {
        cars.push(Car(_brand, _year));
    }
}
