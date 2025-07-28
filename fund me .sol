// SPDX-License-Identifier: MIT 
 pragma solidity ^0.8.18;
 contract Fundme{
 function fund() public  payable  {
 require(msg.value >1e18, "dint send enough eth");

 }


//  function withdraw () public {}

 }  