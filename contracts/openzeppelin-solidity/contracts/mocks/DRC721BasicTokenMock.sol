pragma solidity ^0.4.23;

import "../token/DRC721/DRC721BasicToken.sol";


/**
 * @title DRC721BasicTokenMock
 * This mock just provides a public mint and burn functions for testing purposes
 */
contract DRC721BasicTokenMock is DRC721BasicToken {
  function mint(address _to, uint256 _tokenId) public {
    super._mint(_to, _tokenId);
  }

  function burn(uint256 _tokenId) public {
    super._burn(ownerOf(_tokenId), _tokenId);
  }
}
