//SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract Functions{

    /* Use view when you need to read blockchain state.
     * Use pure when you only need logic or math without touching the blockchain
     */
    uint public myStorageVar;

    function getMyStorageVariable() public view returns(uint) {
        return myStorageVar;
    }

    function getAddication(uint a, uint b) public pure returns (uint) {
        return a+b;
    }

    function setMyStorageVariable(uint _newVar) public {
        myStorageVar = _newVar;
    }


    //Constructor
    address public myAddress;

    constructor(address _someAddress) {
        myAddress = _someAddress;
    }
    function setMyAddress(address _myaddress) public {
        myAddress = _myaddress;
    }

    function setMyAddressMsgSender() public {
        myAddress = msg.sender;
    }
} 