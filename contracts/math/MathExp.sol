// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathExp {
    uint256 constant ONE = 1e18;
    uint256 constant e = 2718281828459045235; // e * 1e18 (approx)

    function exp(uint256 x) public pure returns (uint256) {
        uint256 res = ONE;
        uint256 term = ONE;
        for (uint256 i = 1; i < 15; i++) {
            term = term * x / ONE / i;
            res += term;
            if (term == 0) break;
        }
        return res;
    }
}
