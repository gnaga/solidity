// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;

contract test {

    uint256 public pcount=0; 
    mapping(uint => Person) public people;
    
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    struct  Person {
        uint _id;
        string _firstname;
        string _lastname;
    }

    constructor()  {
        owner=msg.sender;
    }

    function addperson(string memory _firstname, string memory _lastname)  public onlyOwner {
        incrcount();
        people[pcount]= Person(pcount,_firstname,_lastname);  
    }

    function incrcount() internal {
        pcount+=1;
    }

}
