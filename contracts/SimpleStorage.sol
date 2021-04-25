pragma solidity ^0.6.0;

import "@openzeppelin/contracts-ethereum-package/contracts/Initializable.sol"; 
import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol"; //add SafeMath.sol from upgradable library of OpenZeppelin

// Instance created at 0x70b0593bAdA51eEc2e9D2A7BC61A64C7Ae688de6
//0x70b0593bAdA51eEc2e9D2A7BC61A64C7Ae688de6
//import Initializable.sol 
import "@openzeppelin/contracts-ethereum-package/contracts/Initializable.sol";

//inherit from it
contract SimpleStorage is Initializable {
    using SafeMath for uint256; 
   uint256 storedValue;
    uint256 addedValue;
   //replace constructor with intializer
   function initialize () public initializer {
       storedValue = 0;
   }

   function retrieve() public view returns (uint256){
       return storedValue;
   }

     //add a function to increment the storedValue
   function incrementValue (uint256 x) public {
       addedValue = x;
        storedValue.add(x); //safemath pattern for storedValue += x
   }
}