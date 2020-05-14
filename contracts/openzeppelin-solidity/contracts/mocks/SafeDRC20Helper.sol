pragma solidity ^0.4.23;

import "../token/DRC20/DRC20.sol";
import "../token/DRC20/SafeDRC20.sol";


contract DRC20FailingMock is DRC20 {
  function totalSupply() public view returns (uint256) {
    return 0;
  }

  function transfer(address, uint256) public returns (bool) {
    return false;
  }

  function transferFrom(address, address, uint256) public returns (bool) {
    return false;
  }

  function approve(address, uint256) public returns (bool) {
    return false;
  }

  function balanceOf(address) public view returns (uint256) {
    return 0;
  }

  function allowance(address, address) public view returns (uint256) {
    return 0;
  }
}


contract DRC20SucceedingMock is DRC20 {
  function totalSupply() public view returns (uint256) {
    return 0;
  }

  function transfer(address, uint256) public returns (bool) {
    return true;
  }

  function transferFrom(address, address, uint256) public returns (bool) {
    return true;
  }

  function approve(address, uint256) public returns (bool) {
    return true;
  }

  function balanceOf(address) public view returns (uint256) {
    return 0;
  }

  function allowance(address, address) public view returns (uint256) {
    return 0;
  }
}


contract SafeDRC20Helper {
  using SafeDRC20 for DRC20;

  DRC20 failing;
  DRC20 succeeding;

  constructor() public {
    failing = new DRC20FailingMock();
    succeeding = new DRC20SucceedingMock();
  }

  function doFailingTransfer() public {
    failing.safeTransfer(0, 0);
  }

  function doFailingTransferFrom() public {
    failing.safeTransferFrom(0, 0, 0);
  }

  function doFailingApprove() public {
    failing.safeApprove(0, 0);
  }

  function doSucceedingTransfer() public {
    succeeding.safeTransfer(0, 0);
  }

  function doSucceedingTransferFrom() public {
    succeeding.safeTransferFrom(0, 0, 0);
  }

  function doSucceedingApprove() public {
    succeeding.safeApprove(0, 0);
  }
}
