// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathLog10 {
    uint256 constant LOG10_2 = 30102999566; // log10(2)*1e10 approx

    function log10(uint256 x) public pure returns (uint256) {
        return (MathLn.ln(x) * 1e10) / (4342944819); // ln(10)*1e10 approx
    }
}
