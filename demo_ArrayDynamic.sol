pragma solidity >0.4.22 <0.7.0;

contract DArray{
    
    uint[] myArray;
    
    
    function addValue(uint x) public{
        myArray.push(x);
    }
    
    function getArray() public view returns(uint[] memory){
        return myArray;
    }
    
    function getArrayElement(uint id) public view returns(uint){
        return myArray[id];
    }
    
    function getArrayLength() public view returns(uint){
        return myArray.length;
    }
}
