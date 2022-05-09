import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[][](N);
    foreach (i; 1 .. N) {
        long B;
        readf("%d\n", B);

        A[B-1] ~= i;
    }

    long f(long x) {
        long mn = long.max, mx;
        foreach (a; A[x]) {
            long m = f(a);
            mn = min(mn, m), mx = max(mx, m);
        }
        if (mn == long.max) mn = 0;
        return mn + mx + 1;
    }

    long res = f(0);
    res.writeln;
}