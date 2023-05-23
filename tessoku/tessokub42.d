import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    long f(int x, int y) {
        long ret;
        foreach (a, b; zip(A, B)) {
            long u = (x == 0 ? a : -a), v = (y == 0 ? b : -b);
            if (u + v > 0) ret += u + v;
        }
        return ret;
    }

    long res;
    foreach (i; 0 .. 2) {
        foreach (j; 0 .. 2) {
            res = max(res, f(i, j));
        }
    }

    res.writeln;
}