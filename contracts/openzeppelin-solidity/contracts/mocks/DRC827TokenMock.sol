pragma solidity ^0.4.23;


import "../token/DRC827/DRC827Token.sol";


// mock class using DRC827 Token
contract DRC827TokenMock is DRC827Token {

  constructor(address initialAccount, uint256 initialBalance) public {
    balances[initialAccount] = initialBalance;
    totalSupply_ = initialBalance;
  }

}
