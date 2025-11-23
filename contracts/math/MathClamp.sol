// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathClamp {
    function clamp(uint256 value, uint256 minVal, uint256 maxVal) public pure returns (uint256) {
        return value < minVal ? minVal : (value > maxVal ? maxVal : value);
    }
}
