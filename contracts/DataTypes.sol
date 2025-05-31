//SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract DataTypes{

    // Boolean Data Type
    bool public myBool;

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }


    // Integer Data Type - int, uint
    uint public myUint; // 0 - (2^256)-1
    uint8 public myUint8 = 250;

    function setMyUint(uint _myUint) public{
        myUint = _myUint;
    }
  
    function incMyUint8() public {
        myUint8++;
    }


    // String Data Type (extremely expensive to store)
    string public myString = "Hello World";

    function setMyString(string memory _myString) public{
        myString = _myString;
    }

    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }

    //Bytes
    bytes public myByte = "Hello World";
  
    function setMyByte(bytes memory _myByte) public {
        myByte = _myByte;
    }


    //Address
    address public myAddress; 
     
    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function getAddressBalance() public view returns(uint) {
        return  myAddress.balance;
    }


    //Message Object (Imp)
    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender;
    }


    //Maps
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }


  
}