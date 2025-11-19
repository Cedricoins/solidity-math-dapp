library MathAbs {
    function abs(int256 x) public pure returns (uint256) {
        return x < 0 ? uint256(-x) : uint256(x);
    }
}
