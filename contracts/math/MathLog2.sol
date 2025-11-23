// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathLog2 {
    function log2(uint256 x) public pure returns (uint256) {
        uint256 res = 0;
        while (x > 1) {
            x >>= 1;
            res++;
        }
        return res;
    }
}
