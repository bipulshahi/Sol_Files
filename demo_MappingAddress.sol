pragma solidity >0.4.22 <0.7.0;


contract mapping_address{
    
    mapping(address => string) details;  //mapping type to store name for each address
    mapping(address => uint) amountPaid;  //mapping type to store ether paid by each address
    
    
    //function to store name for each address
    function updateDetails(string memory name) public{
        address addr = msg.sender; 
        details[addr] = name;
    }
    
    //function to access name stored using mapping as reference
    function getDetails(address addr) public view returns(string memory){
        return details[addr];
    }
    
    //function to store amount paid in ether by a address
    function updateAmountPaid() public payable{
        address addr = msg.sender; 
        amountPaid[addr] += msg.value;
    }
    
    //function to read to total ether paid by an address
    function getAmountDetails(address addr) public view returns(uint){
        return amountPaid[addr];
    }
    
}
