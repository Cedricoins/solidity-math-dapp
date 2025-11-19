// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathLn {
    uint256 constant ONE = 1e18;

    function ln(uint256 x) public pure returns (int256) {
        require(x > 0, "ln(0)");
        int256 log = 0;
        // Réduction dans [1, 2)
        while (x >= 2 * ONE) { x = x / 2; log += 693147180559945309; } // ln2 * 1e18
        while (x < ONE)     { x = x * 2; log -= 693147180559945309; }
        uint256 z = x - ONE;
        int256 series = int256(z);
        int256 term = int256(z);
        for (uint256 i = 2; i <= 30; i++) {
            term = -term * z / ONE;
            series += term / int256(i);
            if (term < 1000) break; // précision
        }
        return log + series;
    }
}
