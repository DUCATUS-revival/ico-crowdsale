pragma solidity ^0.4.23;

import "./Ownable.sol";
import "../token/DRC20/DRC20Basic.sol";
import "../token/DRC20/SafeDRC20.sol";


/**
 * @title Contracts that should be able to recover tokens
 * @author SylTi
 * @dev This allow a contract to recover any DRC20 token received in a contract by transferring the balance to the contract owner.
 * This will prevent any accidental loss of tokens.
 */
contract CanReclaimToken is Ownable {
  using SafeDRC20 for DRC20Basic;

  /**
   * @dev Reclaim all DRC20Basic compatible tokens
   * @param token DRC20Basic The address of the token contract
   */
  function reclaimToken(DRC20Basic token) external onlyOwner {
    uint256 balance = token.balanceOf(this);
    token.safeTransfer(owner, balance);
  }

}
