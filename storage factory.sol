// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.18;

import {SimpleStorage} from "./zksync/SimpleStorage.sol";

 contract StorageFactory {

    SimpleStorage[] public lisofSimpleStoragecontracts;

    function createSimpleStorageContract () public {
   
    SimpleStorage newsimpleStorage = new SimpleStorage();
    lisofSimpleStoragecontracts.push(newsimpleStorage);

    }
function sfstore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public {

 lisofSimpleStoragecontracts[_simpleStorageIndex] .store(_simpleStorageNumber);
}
function sfget(uint256 _simplestorageIndex) public view returns (uint256) {
 
  return  lisofSimpleStoragecontracts[_simplestorageIndex].retrieve();

}



 }