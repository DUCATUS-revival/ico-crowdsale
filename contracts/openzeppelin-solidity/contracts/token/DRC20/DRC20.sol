pragma solidity ^0.4.23;

import "./DRC20Basic.sol";


/**
 * @title DRC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
contract DRC20 is DRC20Basic {
  function allowance(address owner, address spender)
    public view returns (uint256);

  function transferFrom(address from, address to, uint256 value)
    public returns (bool);

  function approve(address spender, uint256 value) public returns (bool);
  event Approval(
    address indexed owner,
    address indexed spender,
    uint256 value
  );
}
