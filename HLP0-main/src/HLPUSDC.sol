// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract HLPUSDC is ERC20 {
    address public minter;

    constructor() ERC20("HLPUSDC", "HLPUSDC") {
        minter = msg.sender;
    }

    /// @dev temporary function to set the minter, as the HLP0 contract cannot change this.
    function setMinter(address _minter) external {
        require(msg.sender == minter, "Only minter can set minter");
        minter = _minter;
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function mint(uint256 amount) external {
        require(msg.sender == minter, "Only minter can mint");
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) external {
        require(msg.sender == minter, "Only minter can burn");
        _burn(msg.sender, amount);
    }
}
