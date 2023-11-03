import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    bool f(int x, int y) {
        return (A[x] + B[y] - 1) / B[y] > (A[y] + B[x] - 1) / B[x];
    }

    int res;
    foreach (i; 1 .. N) {
        if (f(i, res)) res = i;
    }

    foreach (i; 0 .. N) {
        if (i == res) continue;

        if (!f(res, i)) {
            res = -1;
            break;
        }
    }

    if (res >= 0) ++res;

    res.writeln;
}