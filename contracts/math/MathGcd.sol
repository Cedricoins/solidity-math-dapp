// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathGcd {
    function gcd(uint256 a, uint256 b) public pure returns (uint256) {
        while (b != 0) {
            uint256 t = b;
            b = a % b;
            a = t;
        }
        return a;
    }
}
