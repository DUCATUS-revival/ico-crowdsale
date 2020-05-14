pragma solidity ^0.4.23;

import "../../../openzeppelin-solidity/contracts/token/DRC20/DRC20Basic.sol";


/**
 * @title DRC223Basic
 * @dev Simpler version of DRC223 interface
 */
contract DRC223Basic is DRC20Basic {
  // Occurs when tokens transferred.
  event Transfer(address indexed from, address indexed to, uint indexed value, bytes data);

  /**
   * @dev Transfer the specified amount of tokens to the specified address.
   *      Invokes the `tokenFallback` function if the recipient is a contract.
   *      The token transfer fails if the recipient is a contract
   *      but does not implement the `tokenFallback` function
   *      or the fallback function to receive funds.
   *
   * @param _to    Receiver address.
   * @param _value Amount of tokens that will be transferred.
   * @param _data  Transaction metadata.
   */
  function transfer(address _to, uint _value, bytes _data) public returns (bool);
}
