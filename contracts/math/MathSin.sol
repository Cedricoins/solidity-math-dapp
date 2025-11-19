// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathSin {
    int256 constant ONE = 1e18;
    int256 constant PI = 3141592623589793238;

    function sin(int256 x) public pure returns (int256) {
        // Réduire dans [-π, π]
        x = x % (2 * PI);
        if (x > PI) x -= 2 * PI;
        if (x < -PI) x += 2 * PI;

        int256 x2 = (x * x) / ONE;
        int256 term = x;
        int256 result = x;

        term = (term * x2) / (2 * 3 * ONE);
        result -= term;
        term = (term * x2) / (4 * 5 * ONE);
        result += term;
        term = (term * x2) / (6 * 7 * ONE);
        result -= term;
        term = (term * x2) / (8 * 9 * ONE);
        result += term;

        return result;
    }
}
