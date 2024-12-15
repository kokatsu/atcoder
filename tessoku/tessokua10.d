import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto X = A.cumulativeFold!max.array;

    A.reverse;
    auto Y = A.cumulativeFold!max.array;
    Y.reverse;

    int D;
    readf("%d\n", D);

    foreach (_; 0 .. D) {
        int L, R;
        readf("%d %d\n", L, R);

        int res = max(X[L - 2], Y[R]);
        res.writeln;
    }
}
