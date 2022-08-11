import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto acquaintances = new bool[][](N, N);
    foreach (i; 0 .. M) {
        int x, y;
        readf("%d %d\n", x, y);

        --x, --y;
        acquaintances[x][y] = acquaintances[y][x] = true;
    }

    int res = 1, lim = 1 << N;
    foreach (i; 1 .. lim) {
        int[] nums;
        foreach (j; 0 .. N) {
            if ((i >> j) & 1) nums ~= j;
        }

        if (nums.length <= 1) continue;

        bool isOK = true;
        auto cp = cartesianProduct(nums, nums);
        foreach (c; cp) {
            if (c[0] == c[1]) continue;

            isOK &= acquaintances[c[0]][c[1]];
        }

        if (isOK) res = max(res, nums.length.to!int);
    }

    res.writeln;
}