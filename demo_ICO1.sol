pragma solidity >0.4.22 <0.6.0;

contract x_coin{

//Define maximum coins
uint public max_xcoins = 1000000;

//Define conversion
uint public rupee_to_xcoin = 100;

//Total xcoins bought by investor
uint public total_bought_coins = 0;

//map from investor address to its equity
mapping(address => uint) equity_coins;
mapping(address => uint) equity_rupee;

modifier can_buy_coins(uint investment){
require(total_bought_coins + investment * rupee_to_xcoin <= max_xcoins);
_;
}

//function to check equity_coins
function equity_in_coins(address investor) public view returns(uint){
return equity_coins[investor];
}

//getting the equity in terms of rupee
function equity_in_rupee(address investor) public view returns(uint){
return equity_rupee[investor];
}

//buying function
function buy_coin(address investor,uint investment) public can_buy_coins(investment){
uint coins_bought = investment * rupee_to_xcoin;
equity_coins[investor] += coins_bought;
equity_rupee[investor] = equity_coins[investor]/100;
total_bought_coins += coins_bought;
}

//selling coins
function sell_coin(address investor,uint coins_to_sell) public{
equity_coins[investor] -= coins_to_sell;
equity_rupee[investor] = equity_coins[investor]/100;
total_bought_coins -= coins_to_sell;
}
}
