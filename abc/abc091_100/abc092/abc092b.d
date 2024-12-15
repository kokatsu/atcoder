import std;

void main() {
    int N, D, X;
    readf("%d\n%d %d\n", N, D, X);

    int res = X;
    foreach (_; 0 .. N) {
        int A;
        readf("%d\n", A);

        res += iota(1, D + 1, A).length;
    }

    res.writeln;
}
