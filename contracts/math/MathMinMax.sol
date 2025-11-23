// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathMinMax {
    function min(uint256 a, uint256 b) public pure returns (uint256) { return a < b ? a : b; }
    function max(uint256 a, uint256 b) public pure returns (uint256) { return a > b ? a : b; }
}
