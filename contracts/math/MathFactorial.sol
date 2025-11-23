// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathFactorial {
    function factorial(uint256 n) public pure returns (uint256) {
        require(n <= 20, "too big");
        uint256 result = 1;
        for (uint256 i = 2; i <= n; i++) result *= i;
        return result;
    }
}
