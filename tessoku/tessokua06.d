import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto A = new long[](N + 1);
    A[1 .. $] = readln.chomp.split.to!(long[]);

    auto C = A.cumulativeFold!"a + b".array;
    foreach (_; 0 .. Q) {
        long L, R;
        readf("%d %d\n", L, R);

        long res = C[R] - C[L - 1];
        res.writeln;
    }
}
