pragma solidity >0.4.22 <0.7.0;

import "/.workspaces/default_workspace/demo_library1.sol";

contract testLib{
    
    using xyz for uint;
    
    function testIncrement(uint user_value) public view returns(uint){
        return xyz.increment(user_value);
    }
    
    function testDecrement(uint user_value) public view returns(uint){
        return xyz.decrement(user_value);
    }
    
    function testIncrementbyValue(uint v1,uint v2) public view returns(uint){
        return xyz.incementbyvalue(v1,v2);
    }
    
    function testDecrementbyValue(uint v1,uint v2) public view returns(uint){
        return xyz.decementbyvalue(v1,v2);
    }
}
