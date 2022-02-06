// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;

contract time {

    uint256 public pcount=0; 
    mapping(uint => Person) public people;
    uint256 timeStamp = 1643048064;
    address owner;

    modifier onlyWhileTimestamp() { 
        require(block.timestamp == timeStamp);
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

    function addperson(string memory _firstname, string memory _lastname)  public onlyWhileTimestamp {
        incrcount();
        people[pcount]= Person(pcount,_firstname,_lastname);  
    }

    function incrcount() internal {
        pcount+=1;
    }

}
