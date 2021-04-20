pragma solidity >0.4.22 <0.6.0;

contract CRUD{

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
        for (uint i = 0;i < user.length;i++){
            
            if (user[i].id == idx){
        
        return(user[idx].id , user[idx].name , user[idx].email , user[idx].age);
            }
        }
    }
    
    function update(uint idx,string memory newName , string memory newEmail , uint newAge) public{
         for (uint i = 0;i < user.length;i++){
            
            if (user[i].id == idx){
                user[idx].name = newName;
                user[idx].email = newEmail;
                user[idx].age = newAge;
            }
    }
    }
    
    function destroy(uint idx) public{
        for (uint i = 0;i < user.length;i++){
            
            if (user[i].id == idx){
                delete user[idx];
                
            }
        }
    }

    
}
