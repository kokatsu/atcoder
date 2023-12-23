import std;

void main() {
    long A, M, L, R;
    readf("%d %d %d %d\n", A, M, L, R);

    long f(long x, long y) {
        return x >= 0 ? x / y : ((x - y + 1) / y);
    }

    long l = f(L-A-1, M) * M + A;
    long r = f(R-A, M) * M + A;

    long res = (r - l) / M;
    res.writeln;
}