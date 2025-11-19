// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathPow {
    function pow(uint256 base, uint256 exponent) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            require(result <= type(uint256).max / base, "MathPow: overflow");
            result *= base;
        }
        return result;
    }
}
