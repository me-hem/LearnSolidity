//SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract MyContract {
    string public outString = "Hello World";

    function updateOurString(string memory _updateString) public payable{
        if(msg.value == 1 ether) {
            outString = _updateString;    
        } else {
            payable(msg.sender).transfer(msg.value);
        }
        
    }
}