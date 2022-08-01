import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](M), B = new int[](M);
    foreach (i; 0 .. M) readf("%d %d\n", A[i], B[i]);

    int K;
    readf("%d\n", K);

    auto C = new int[](K), D = new int[](K);
    foreach (i; 0 .. K) readf("%d %d\n", C[i], D[i]);

    int res, L = 1 << K;
    foreach (i; 0 .. L) {
        auto list = new bool[](N+1);

        foreach (j; 0 .. K) {
            list[(((i >> j) & 1) ? C[j] : D[j])] = true;
        }

        int cnt;
        foreach (a, b; zip(A, B)) {
            if (list[a] && list[b]) ++cnt;
        }

        res = max(res, cnt);
    }

    res.writeln;
}