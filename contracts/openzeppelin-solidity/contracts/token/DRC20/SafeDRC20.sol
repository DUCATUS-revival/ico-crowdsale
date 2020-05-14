pragma solidity ^0.4.23;

import "./DRC20Basic.sol";
import "./DRC20.sol";


/**
 * @title SafeDRC20
 * @dev Wrappers around DRC20 operations that throw on failure.
 * To use this library you can add a `using SafeDRC20 for DRC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeDRC20 {
  function safeTransfer(DRC20Basic token, address to, uint256 value) internal {
    require(token.transfer(to, value));
  }

  function safeTransferFrom(
    DRC20 token,
    address from,
    address to,
    uint256 value
  )
    internal
  {
    require(token.transferFrom(from, to, value));
  }

  function safeApprove(DRC20 token, address spender, uint256 value) internal {
    require(token.approve(spender, value));
  }
}
