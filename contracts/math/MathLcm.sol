library MathLcm {
    function lcm(uint256 a, uint256 b) public pure returns (uint256) {
        return a / MathGcd.gcd(a, b) * b;
    }
}
