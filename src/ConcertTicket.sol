// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "lib/openzeppelin-contracts/contracts/utils/Counters.sol";

contract ConcertTicket is ERC721URIStorage{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor () ERC721 ("Concert Ticket", "CCT") {}
    function awardTicket (address goer, string memory tokenURI) public returns (uint) {
        uint ItemId = _tokenIds.current();
        _mint(goer, ItemId);
        _setTokenURI(ItemId, tokenURI);

        _tokenIds.increment();
        return ItemId;
    }

}
