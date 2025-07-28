
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;// This is the solidity version you are using
contract SimpleStorage {
uint256 public myFavorateNumber ;
// uint256[] ListofFavorateNumber;
struct person{
    uint256 favorateNumber;
    string name;
   } 
//    mapping
mapping (string =>uint256) public nametofavoritenumber;

    // person public pat = person({favorateNumber :33,name: "pat", iscool : false ,cool: "cat" });

person[] public  listpfpeople;
function store(uint256 _favorateNumber ) public virtual{
    myFavorateNumber =_favorateNumber;
   
}

function retrieve ()public view  returns (uint256) {
   
    return myFavorateNumber;

}
// calldata memory storage
function addperson (string memory _name, uint256 _favoratenumber  ) public {
    listpfpeople.push(person(_favoratenumber,_name));
    nametofavoritenumber[_name]= _favoratenumber;
}
}
contract simple2 {}
contract simple3{}