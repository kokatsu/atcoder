import std;

void main() {
    long N, T;
    readf("%d %d\n", N, T);

    auto A = readln.chomp.split.to!(long[]);

    long L = N / 2, u = 1 << L;
    auto P = new long[](u);
    foreach (i; 0 .. u) {
        long num;
        foreach (j; 0 .. L) {
            if ((i >> j) & 1) num += A[j];
        }

        P[i] = num;
    }

    long R = N - L, v = 1 << R;
    auto Q = new long[](v);
    foreach (i; 0 .. v) {
        long num;
        foreach (j; 0 .. R) {
            if ((i >> j) & 1) num += A[L+j];
        }

        Q[i] = num;
    }

    auto S = Q.sort;
    long res;
    foreach (p; P) {
        long lim = T - p;
        auto lb = S.lowerBound(lim+1);
        if (!lb.empty) res = max(res, p+lb.back);
    }

    res.writeln;
}