import std;

void main() {
    int A, B, C;
    readfln("%d %d %d", A, B, C);

    real[][][] dp = new real[][][](101, 101, 101);

    real f(int x, int y, int z) {
        if (x == 100 || y == 100 || z == 100) {
            return 0.0;
        }
        if (!isNaN(dp[x][y][z])) {
            return dp[x][y][z];
        }
        real ret = 0.0;
        ret += (f(x + 1, y, z) + 1.0) * x / (x + y + z);
        ret += (f(x, y + 1, z) + 1.0) * y / (x + y + z);
        ret += (f(x, y, z + 1) + 1.0) * z / (x + y + z);
        dp[x][y][z] = ret;
        return ret;
    }

    string res = format("%0.20f", f(A, B, C));
    res.writeln;
}
