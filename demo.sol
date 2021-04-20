pragma solidity >0.4.0 <0.6.0;

contract abc{
    
    //Defining Variables with value
    string name = "Bipul";
    int age = 30;
    
    //Defining Function that can change or set a value
    function setName(string memory newName) public{
        name = newName;
    }
    
    function setAge(int newAge) public{
        age = newAge;
    }
    
    //Defining Functions that can return a value
    function getName() public view returns(string memory){
        return name;
    }
    
    function getAge() public view returns(int){
        return age;
    }
    
}
