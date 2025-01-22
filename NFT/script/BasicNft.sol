// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//NFT/lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol

contract BasicNft is ERC721 {
    constructor() ERC721("Dogie", "DOG") {}
}
