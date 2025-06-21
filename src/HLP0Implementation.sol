// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {OFT} from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title HLP0 Implementation Contract
/// @dev Simple OFT contract for destination chains - no vault functionality
contract HLP0Implementation is OFT {
    constructor(string memory _name, string memory _symbol, address _lzEndpoint, address _delegate)
        OFT(_name, _symbol, _lzEndpoint, _delegate)
        Ownable(_delegate)
    {}

    /// @dev Override decimals to match HLP0 (6 decimals)
    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
