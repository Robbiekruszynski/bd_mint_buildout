// SPDX-License -Identifer: UNLICENSED
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BlockdaemonGuild is ERC721, Ownable {
    uint256 public mintPrice;
    uint256 public totalSupply;
    uint256 public maxSupply;
    uint256 public maxPerWallet;
    uint256 public isPublicMintEnabled;
    string internal baseTokenUri;
    address payable public withdrawWallet;
    mapping(address => uint256) public walletMints;

    constructor() payable ERC721("BlockdaemonGuild", "BDG") {
        mintPrice = 0.02 ether;
        totalSupply = 0;
        maxSupply = 1000;
        maxPerWallet = 1;
        //consider the maxPerWallet
    }
}
