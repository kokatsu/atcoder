import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    long[] Y = new long[](N + 1), P = new long[](N + 1);
    foreach (i; 1 .. N + 1) {
        readfln("%d %d", Y[i], P[i]);
    }

    zip(Y, P).sort!((a, b) => a[0] < b[0]);

    auto S = Y.assumeSorted;
    long[] C = P.cumulativeFold!"a + b".array;

    long[] R = new long[](Q);
    foreach (ref r; R) {
        long L;
        readfln("%d", L);

        long l = S.lowerBound(L).length.to!long - 1;
        r = C[N] - C[l];
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
