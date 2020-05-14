pragma solidity ^0.4.23;


/**
* @title Contract that will work with DRC223 tokens.
*/
contract DRC223Receiver {
  /**
   * @dev Standard DRC223 function that will handle incoming token transfers.
   *
   * @param _from  Token sender address.
   * @param _value Amount of tokens.
   * @param _data  Transaction metadata.
   */
  function tokenFallback(address _from, uint _value, bytes _data) public;
}
