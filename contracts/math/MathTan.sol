library MathTan {
    function tan(int256 x) public pure returns (int256) {
        return MathSin.sin(x) / MathCos.cos(x);
    }
}
