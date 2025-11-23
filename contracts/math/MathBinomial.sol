// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathBinomial {
    function binomial(uint256 n, uint256 k) public pure returns (uint256) {
        if (k > n) return 0;
        if (k == 0 || k == n) return 1;
        k = k > n - k ? n - k : k;
        uint256 result = 1;
        for (uint256 i = 1; i <= k; i++) {
            result = result * (n - k + i) / i;
        }
        return result;
    }
}
