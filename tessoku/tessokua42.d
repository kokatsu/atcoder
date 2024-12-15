import std;

const lo = 1, hi = 100;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", A[i], B[i]);

    int res;
    foreach (i; lo .. hi + 1) {
        foreach (j; lo .. hi + 1) {
            int cnt;
            foreach (a, b; zip(A, B)) {
                if (i <= a && a <= i + K && j <= b && b <= j + K) {
                    ++cnt;
                }
            }

            res = max(res, cnt);
        }
    }

    res.writeln;
}
