pragma solidity >=0.6.2 <0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract GameItem is ERC721 {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // Default constructor
    constructor() public ERC721("GameItem", "ITM") {}

    function awardItem(address player, string memory tokenURI) public returns (uint256) {

        // Increment the token counter
        _tokenIds.increment();

        // Create a new item
        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId); // Mint token to player
        _setTokenURI(newItemId, tokenURI); // Assign an information uri for the token

        // Return the token
        return newItemId;

    }

}