pragma solidity ^0.4.23;

import "../token/DRC20/StandardBurnableToken.sol";


contract StandardBurnableTokenMock is StandardBurnableToken {

  constructor(address initialAccount, uint initialBalance) public {
    balances[initialAccount] = initialBalance;
    totalSupply_ = initialBalance;
  }

}
