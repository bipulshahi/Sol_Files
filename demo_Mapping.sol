pragma solidity >0.4.22 <0.7.0;

contract testMapping{
    
    //Using a string value as a id
    mapping(string => string) details;
    
    function updateDetails(string memory id,string memory name) public{
        details[id] = name;
    }
    
    function getDetails(string memory id) public view returns(string memory){
        return details[id];
    }
    
    //Using a numeric id for mapping and making it a autoincrement
    mapping(uint => string) new_details;
    uint id = 0;
    
    function updatenewDetails(string memory name) public{
        new_details[id] = name;
        id += 1;
    }
    
    function getnewDetails(uint id) public view returns(string memory){
        return new_details[id];
    }
}
