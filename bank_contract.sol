pragma solidity >0.4.0 <0.6.0;

contract Bank{
    
    int value;
    address owner;
    
    constructor () public{
        owner = msg.sender;
    }
    
    modifier ownerVerification{
        require(owner == msg.sender);
        _;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
    
    function deposit(int amount) public{
        value += amount;
    }
    
    function withdraw(int amount) public ownerVerification{
        value -= amount;
    }
    
    function balance() public view ownerVerification returns(int){
        return value;
    }
}
