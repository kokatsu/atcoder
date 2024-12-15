import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long M = 998244353;

    A.sort!"a > b";

    long res = A[0] * A[0] % M, s = A[0];
    foreach (i; 1 .. N) {
        s = (s * 2 + M - A[i - 1] + A[i]) % M;
        res = (res + (A[i] * s) % M) % M;
    }

    res.writeln;
}
