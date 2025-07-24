import std;

void main() {
    long N;
    readf("%d\n", N);

    long[long] M;
    M[1] = 0;

    long f(long x) {
        if (x !in M) {
            M[x] = f(x / 2) + f((x + 1) / 2) + x;
        }

        return M[x];
    }

    long res = f(N);
    res.writeln;
}
