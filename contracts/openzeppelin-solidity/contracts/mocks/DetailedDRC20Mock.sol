pragma solidity ^0.4.23;

import "../token/DRC20/StandardToken.sol";
import "../token/DRC20/DetailedDRC20.sol";


contract DetailedDRC20Mock is StandardToken, DetailedDRC20 {
  constructor(
    string _name,
    string _symbol,
    uint8 _decimals
  )
    DetailedDRC20(_name, _symbol, _decimals)
    public
  {}
}
