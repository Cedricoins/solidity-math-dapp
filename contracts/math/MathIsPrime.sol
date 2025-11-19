library MathIsPrime {
    function isPrime(uint256 n) public pure returns (bool) {
        if (n < 2) return false;
        if (n == 2 || n == 3) return true;
        if (n % 2 == 0) return false;

        uint256 s = n - 1;
        uint256 r = 0;
        while (s % 2 == 0) {
            s /= 2;
            r += 1;
        }

        // Test avec témoins 2, 3, 5
        return millerTest(2, s, r, n) && millerTest(3, s, r, n) && millerTest(5, s, r, n);
    }

    function millerTest(uint256 a, uint256 s, uint256 r, uint256 n) internal pure returns (bool) {
        uint256 y = MathModExp.modExp(a, s, n);
        if (y == 1 || y == n - 1) return true;
        for (uint256 i = 1; i < r; i++) {
            y = mulmod(y, y, n);
            if (y == n - 1) return true;
        }
        return false;
    }
}
