pragma solidity >0.4.22 <0.7.0;

contract newContract{
    
    address public owner;
    uint256 public val;
    uint256 public totalVal;
    
    //assigning address of owner of contract to owner variable
    constructor() public{
        owner = msg.sender;
    }
    
    //returning the address of person interactiong with this function
    function getAddress() public view returns(address){
        return msg.sender;
    }
    
    //veryfing the address person interactiong that whether he is owner or not
    function verifyOwner() public view returns(bool){
        return owner == msg.sender;
    }
    
    //function to let the user pay in terms of ether
    function getValue() public payable{
      val =  msg.value;
      totalVal += val;
    }
    
    //function to validate ether paid
    function validatePayment() public view returns(bool){
        return (val >= 0.01 ether) && (val < 2 ether);
    }
}

    
