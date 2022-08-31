// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Employees{
     string fullName ;
   constructor(){
        fullName="mohammed helal";
      }

    function setEmployees(string memory name)public {
        fullName=name;
  }
     function getEmployees() public view returns(string memory name) {
         return fullName;
  }
}