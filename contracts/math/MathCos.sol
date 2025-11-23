// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathCos {
    int256 constant ONE = 1e18;
    int256 constant PI = 3141592623589793238;

    function cos(int256 x) public pure returns (int256) {
        return MathSin.sin(PI/2 - x);
    }
}
