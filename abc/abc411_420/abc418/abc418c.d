import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    long[] A = readln.chomp.split.to!(long[]);

    long[] B = new long[](Q);
    foreach (i; 0 .. Q) {
        readf("%d\n", B[i]);
    }

    A.sort;

    auto G = A.group.array;
    size_t L = G.length;
    long[] M = new long[](L + 1);
    M[0] = N;
    long[] C = new long[](L + 1);
    foreach (i, g; G) {
        M[i + 1] = M[i] - g[1];
        long p = i == 0 ? 0 : G[i - 1][0];
        C[i + 1] = C[i] + (g[0] - p) * M[i];
    }

    auto U = A.uniq.array.assumeSorted;

    long[] X = new long[](Q);
    foreach (i; 0 .. Q) {
        auto lb = U.lowerBound(B[i]);
        size_t l = lb.length;
        if (l == L) {
            X[i] = -1;
            continue;
        }

        long p = l == 0 ? 0 : G[l - 1][0];
        X[i] = C[l] + (B[i] - p - 1) * M[l] + 1;
    }

    string res = format("%(%d\n%)", X);
    res.writeln;
}
