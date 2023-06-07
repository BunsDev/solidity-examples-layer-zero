// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.2;

import "hardhat-deploy/solc_0.8/proxy/Proxied.sol";
import "../token/onft/ERC721/ONFT721Upgradeable.sol";

contract ExampleONFT721Upgradeable is Initializable, ONFT721Upgradeable, Proxied {
    function initialize(string memory _name, string memory _symbol, address _lzEndpoint) public initializer {
        __ONFT721Upgradeable_init(_name, _symbol, _lzEndpoint);
    }

    function mint(address _tokenOwner, uint _newId) external {
        _safeMint(_tokenOwner, _newId);
    }
}
