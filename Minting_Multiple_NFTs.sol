pragma solidity 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract test is ERC721 {
    
    constructor() ERC721("Sina NFTs", "GOLD") {}
    
    uint public counter;
    
    function mint(uint _number) public returns(uint) {
        for (uint i=counter + 1; counter <= counter + _number; i++) {
            _safeMint(msg.sender, i);
        }
        counter += _number + 1;
        return counter;
    }
}
