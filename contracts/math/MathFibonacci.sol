library MathFibonacci {
    function fib(uint256 n) public pure returns (uint256) {
        uint256 a = 0;
        uint256 b = 1;
        for (uint256 i = 0; i < n; i++) {
            uint256 temp = a + b;
            a = b;
            b = temp;
        }
        return a;
    }
}
