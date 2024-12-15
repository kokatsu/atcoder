import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.sort;
    auto C = cumulativeFold!"a + b"([0L] ~ A).array;

    foreach (_; 0 .. Q) {
        long X;
        readf("%d\n", X);

        auto T = B.trisect(X);

        long res;

        long lenL = T[0].length.to!long;
        res += lenL * X - C[lenL];

        long lenU = T[2].length.to!long;
        res += C[N] - C[N - lenU] - lenU * X;

        res.writeln;
    }
}
