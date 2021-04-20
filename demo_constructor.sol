pragma solidity >0.4.0 <0.6.0;

contract constructor_concept{
    
    string message;
    
    constructor(string memory newMessage) public{
        message = newMessage;
    }
    
    function getMessage() public view returns(string memory){
        return message;
    }
}
