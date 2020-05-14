pragma solidity ^0.4.23;

import "./DRC721Receiver.sol";


contract DRC721Holder is DRC721Receiver {
  function onDRC721Received(address, uint256, bytes) public returns(bytes4) {
    return DRC721_RECEIVED;
  }
}
