pragma solidity >0.4.22 <0.7.0;


contract testArray{
    
    uint[4] myArray = [5,7,9,2];
    
    function getArray() public view returns(uint[4] memory){
        return myArray;
    }
    
    function getArrayElement(uint id) public view returns(uint){
        return myArray[id];
    }
    
    function getarraylength() public view returns(uint){
        return myArray.length;
    }
    
}
