import std;

void main() {
    long N;
    readfln("%d", N);

    long[] X = readln.chomp.split.to!(long[]);
    long[] P = readln.chomp.split.to!(long[]);

    zip(X, P).sort;

    long[] C = new long[](N + 1);
    foreach (i, p; P) {
        C[i + 1] = C[i] + p;
    }

    auto Y = X.assumeSorted;

    long Q;
    readfln("%d", Q);

    long[] V = new long[](Q);
    foreach (ref v; V) {
        long L, R;
        readfln("%d %d", L, R);

        auto l = Y.lowerBound(L).length;
        auto r = Y.lowerBound(R + 1).length;

        v = C[r] - C[l];
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
