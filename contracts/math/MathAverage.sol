library MathAverage {
    function avg(uint256 a, uint256 b) public pure returns (uint256) {
        return (a & b) + (a ^ b) / 2;
    }
}
