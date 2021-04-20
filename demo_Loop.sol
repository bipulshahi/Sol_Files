pragma solidity >0.4.0 <0.7.0;


contract loopTest{
    
    uint sData;
    constructor() public{
        sData = 10;
    }
    
    function getValue()  public view returns(string memory){
        uint a = 7;
        uint b = 6;
        uint c = a + b;
        return integerToString(c);
    }
    
    
    function integerToString(uint i) public view returns(string memory){
        if (i == 0){
            return "0";
        }
        
        uint len;
        uint j = 0;
        for (j = i ; j != 0 ; j /= 10){
            len ++ ;
        }
        
        bytes memory bstr = new bytes(len);
        uint k = len - 1;
        while (i != 0){
            bstr[k--] = byte(uint8(48 + i % 10));
            i /= 10;
        }
        return string(bstr);
    }
}
