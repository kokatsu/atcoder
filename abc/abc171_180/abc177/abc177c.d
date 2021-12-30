import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    enum long M = 10 ^^ 9 + 7;

    auto B = A.cumulativeFold!((a, b) => (a + b) % M).array;

    long res;
    foreach (i; 0 .. N-1) {
        res = (res + (A[i] * (B[N-1] - B[i] + M)) % M) % M;
    }

    res.writeln;
}