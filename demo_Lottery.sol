pragma solidity >0.4.22 <0.6.0;


contract lottery{
    address manager;
    address payable[] players;
    
    constructor() public{
        manager = msg.sender;
    }
    
    modifier restrict(){
        require (msg.sender == manager);
        _;
    }
    
    function enter() public payable{
        require(msg.value > 0.01 ether);
        players.push(msg.sender);
    }
    
    function all_players() public view restrict returns(address payable[] memory){
        return players;
    }
    
    function random() private returns(uint){
        uint randonNumber = uint(keccak256(abi.encodePacked(now,block.difficulty,players)));
        return randonNumber;
    }
    
    function pickWinner() public restrict{
        uint index = random() % players.length;
        players[index].transfer(address(this).balance);
        players = new address payable[](0);
    }
    
}
