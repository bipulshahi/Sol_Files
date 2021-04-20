pragma solidity >0.4.22 <0.6.0;

contract my_coin{
    
    //maximum no. of coins
    //exchange rate
    //balance check in terms of coins
    //balace check in terms of currency
    //buying option
    //selling option
    
    uint public max_xcoin = 100000;
    
    uint public rupee_to_xcoin = 100;
    
    uint public total_bought_coins = 0;
    
    //map the investor address to equity
    mapping(address => uint) equity_coins;
    
    modifier can_buy_coins(uint investment){
        require(total_bought_coins + investment*rupee_to_xcoin <= max_xcoin);
        _;
    }
    
    //function to check equity_coins
    function equity_in_coins() public view returns(uint){
        address investor = msg.sender;
        return equity_coins[investor];
    }
    
    //function to check equity in rupees
    function equity_rupees() public view returns(uint){
        address investor = msg.sender;
        return equity_coins[investor]/100;
    }
    
    
    //buying option for coins
    function buy_coin(uint investment) public can_buy_coins(investment){
        address investor = msg.sender;
        uint coins_bought = investment*rupee_to_xcoin;
        equity_coins[investor] += coins_bought;
        total_bought_coins += coins_bought;
    }
    
    //selling coins
    function sell_coins(uint coins) public{
         address investor = msg.sender;
         uint coins_sold = coins;
         equity_coins[investor] -= coins_sold;
         total_bought_coins -= coins_sold;
    }
    
}
