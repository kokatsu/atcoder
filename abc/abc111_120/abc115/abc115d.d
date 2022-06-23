import std;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    auto burger = new long[](N+1), patty = new long[](N+1);
    burger[0] = patty[0] = 1;
    foreach (i; 1 .. N+1) {
        burger[i] = burger[i-1] * 2 + 3;
        patty[i] = patty[i-1] * 2 + 1;
    }

    long f(long l, long x) {
        if (l == 0) return patty[l];
        if (x <= 1) return 0;

        long b = burger[l-1] + 2, p = patty[l-1] + 1;
        if (x == b) return p;
        if (x < b) return f(l-1, x-1);
        return p + f(l-1, x-b);
    }

    long res = f(N, X);

    res.writeln;
}