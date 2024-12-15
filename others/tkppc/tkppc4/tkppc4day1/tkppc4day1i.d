import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    A.sort;
    auto C = B.sort;

    auto L = new long[](N), R = new long[](N);
    foreach_reverse (i, a; A) {
        L[i] = C.lowerBound(a).length;
        R[i] = (R[i] + C.upperBound(a).length) % MOD;
        if (i > 0)
            R[i - 1] += R[i];
    }

    long res;
    foreach (i; 0 .. N - 1) {
        res = (res + L[i] * R[i + 1]) % MOD;
    }

    res.writeln;
}
