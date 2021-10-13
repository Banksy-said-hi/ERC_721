pragma solidity 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract test is ERC721 {
    
    constructor() ERC721("Sina NFTs", "GOLD") {}
    
    uint public tokenIds;
    
    function mint_once() public {
        _mint(msg.sender, tokenIds);
        tokenIds += 1;
    }
    
    function mint_twice() public {
        for (uint i=tokenIds; i < tokenIds+2; i++) {
            _mint(msg.sender, i);
        }
        tokenIds += 2;
    }
}
