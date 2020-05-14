pragma solidity ^0.4.23;

import "../token/DRC20/DRC20.sol";
import "../crowdsale/validation/IndividuallyCappedCrowdsale.sol";


contract IndividuallyCappedCrowdsaleImpl is IndividuallyCappedCrowdsale {

  constructor (
    uint256 _rate,
    address _wallet,
    DRC20 _token
  )
    public
    Crowdsale(_rate, _wallet, _token)
  {
  }

}
