pragma solidity >0.4.0 <0.6.0;


contract newContract{
    
    address owner;
    
    constructor () public{
        owner = msg.sender;
    }
    
    modifier restrict{
        require(owner == msg.sender);
        _;
    }
    
    function ownerAddress() public view returns(address){
        return owner;
    }
    
    function triggeredBy() public view returns(address){
        return msg.sender;
    }
    
    function add(int a, int b) public view restrict returns(int){
        int c = a+b;
        return c;
    }
}
