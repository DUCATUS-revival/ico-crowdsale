pragma solidity ^0.4.23;

import "../../../openzeppelin-solidity/contracts/math/SafeMath.sol";
import "../../../openzeppelin-solidity/contracts/token/DRC20/BasicToken.sol";
import "../../../openzeppelin-solidity/contracts/AddressUtils.sol";
import "./DRC223Basic.sol";
import "./DRC223Receiver.sol";


/**
 * @title Reference implementation of the DRC223 standard token.
 */
contract DRC223Token is DRC223Basic, BasicToken, DRC223Receiver {
  using SafeMath for uint;
  using AddressUtils for address;

  /**
   * @dev Token should not accept tokens
   */
  function tokenFallback(address, uint, bytes) public {
    revert();
  }

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
  function transfer(address _to, uint _value, bytes _data) public returns (bool) {
    // Standard function transfer similar to DRC20 transfer with no _data .
    // Added due to backwards compatibility reasons .
    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    if (_to.isContract()) {
      DRC223Receiver receiver = DRC223Receiver(_to);
      receiver.tokenFallback(msg.sender, _value, _data);
    }
    emit Transfer(
      msg.sender,
      _to,
      _value,
      _data
    );
    return true;
  }

  /**
   * @dev Transfer the specified amount of tokens to the specified address.
   *      This function works the same with the previous one
   *      but doesn't contain `_data` param.
   *      Added due to backwards compatibility reasons.
   *
   * @param _to    Receiver address.
   * @param _value Amount of tokens that will be transferred.
   */
  function transfer(address _to, uint256 _value) public returns (bool) {
    bytes memory empty;
    return transfer(_to, _value, empty);
  }
}
