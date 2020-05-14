pragma solidity ^0.4.23;


import "../DRC20/DRC20.sol";


/**
 * @title DRC827 interface, an extension of DRC20 token standard
 *
 * @dev Interface of a DRC827 token, following the DRC20 standard with extra
 * @dev methods to transfer value and data and execute calls in transfers and
 * @dev approvals.
 */
contract DRC827 is DRC20 {
  function approveAndCall(
    address _spender,
    uint256 _value,
    bytes _data
  )
    public
    payable
    returns (bool);

  function transferAndCall(
    address _to,
    uint256 _value,
    bytes _data
  )
    public
    payable
    returns (bool);

  function transferFromAndCall(
    address _from,
    address _to,
    uint256 _value,
    bytes _data
  )
    public
    payable
    returns (bool);
}
