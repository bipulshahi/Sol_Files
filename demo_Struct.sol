pragma solidity >0.4.0 <0.7.0;


contract newStructure{
    
    uint idx = 0;
    
    struct User{
        uint id;
        string name;
        string email;
        uint age;
    }
    
    User[] user;
    
    function create(string memory newName , string memory newEmail , uint newAge) public{
        user.push(User(idx,newName,newEmail,newAge));
        idx += 1;
    }
    
    function readStructure(uint idx) public view returns(uint,string memory,string memory,uint){
        return(user[idx].id , user[idx].name , user[idx].email , user[idx].age);
    }
    
    //Make the struct which can hold id where id can be autoincremented 
    //while adding any new value
}
