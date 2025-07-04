// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IHLPSHARES is IERC20 {
    function decimals() external view returns (uint8);

    function mint(uint256 amount) external;

    function burn(uint256 amount) external;
} 