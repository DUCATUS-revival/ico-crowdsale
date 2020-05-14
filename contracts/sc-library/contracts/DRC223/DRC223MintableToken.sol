pragma solidity ^0.4.23;

import "../../../openzeppelin-solidity/contracts/token/DRC20/MintableToken.sol";
import "./DRC223Token.sol";


/**
 * @title DRC223MintableToken
 * @dev DRC223 implementation of MintableToken.
 */
contract DRC223MintableToken is MintableToken, DRC223Token {
  /**
   * @dev Function to mint tokens. Invokes token fallback function on recipient address.
   * @param _to The address that will receive the minted tokens.
   * @param _amount The amount of tokens to mint.
   * @return A boolean that indicates if the operation was successful.
   */
  function mint(
    address _to,
    uint256 _amount
  )
    hasMintPermission
    canMint
    public
    returns (bool)
  {
    bytes memory empty;
    totalSupply_ = totalSupply_.add(_amount);
    balances[_to] = balances[_to].add(_amount);
    if (_to.isContract()) {
      DRC223Receiver receiver = DRC223Receiver(_to);
      receiver.tokenFallback(address(this), _amount, empty);
    }
    emit Mint(_to, _amount);
    emit Transfer(
      msg.sender,
      _to,
      _amount,
      empty
    );
    return true;
  }
}
