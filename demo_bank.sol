pragma solidity >0.4.0 <0.6.0;

contract address_concepts{
    
    address owner;
    
    constructor () public{
        owner = msg.sender;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
    
    function getInteractingAddress() public view returns(address){
        return msg.sender;
    }
}

