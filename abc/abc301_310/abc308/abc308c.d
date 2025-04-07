import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    bool cmp(int i, int j) {
        real x = A[i].to!real / (A[i] + B[i]);
        real y = A[j].to!real / (A[j] + B[j]);

        if (x != y) {
            return x >= y;
        }

        return i < j;
    }

    auto res = iota(1, N + 1).array;
    res.sort!((i, j) => cmp(i - 1, j - 1));

    writefln("%(%d %)", res);
}
