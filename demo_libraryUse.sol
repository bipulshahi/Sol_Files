pragma solidity >0.4.22 <0.7.0;


library xyz{
    
    function increment(uint val) public view returns(uint){
        return val + 1;
    }
    
    function decrement(uint val) public view returns(uint){
        return val - 1;
    }
    
    function incementbyvalue(uint val1, uint val2) public view returns(uint){
        return val1 + val2;
    }
    
    function decementbyvalue(uint val1, uint val2) public view returns(uint){
        return val1 - val2;
    }
    
    
}
