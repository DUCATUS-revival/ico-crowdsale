pragma solidity ^0.4.23;


/**
 * @title DRC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 *  from DRC721 asset contracts.
 */
contract DRC721Receiver {
  /**
   * @dev Magic value to be returned upon successful reception of an NFT
   *  Equals to `bytes4(keccak256("onDRC721Received(address,uint256,bytes)"))`,
   *  which can be also obtained as `DRC721Receiver(0).onDRC721Received.selector`
   */
  bytes4 constant DRC721_RECEIVED = 0xf0b9e5ba;

  /**
   * @notice Handle the receipt of an NFT
   * @dev The DRC721 smart contract calls this function on the recipient
   *  after a `safetransfer`. This function MAY throw to revert and reject the
   *  transfer. This function MUST use 50,000 gas or less. Return of other
   *  than the magic value MUST result in the transaction being reverted.
   *  Note: the contract address is always the message sender.
   * @param _from The sending address
   * @param _tokenId The NFT identifier which is being transfered
   * @param _data Additional data with no specified format
   * @return `bytes4(keccak256("onDRC721Received(address,uint256,bytes)"))`
   */
  function onDRC721Received(
    address _from,
    uint256 _tokenId,
    bytes _data
  )
    public
    returns(bytes4);
}
