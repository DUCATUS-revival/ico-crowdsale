pragma solidity ^0.4.23;

import "../token/DRC20/DRC20.sol";
import "../crowdsale/validation/TimedCrowdsale.sol";


contract TimedCrowdsaleImpl is TimedCrowdsale {

  constructor (
    uint256 _openingTime,
    uint256 _closingTime,
    uint256 _rate,
    address _wallet,
    DRC20 _token
  )
    public
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(_openingTime, _closingTime)
  {
  }

}
