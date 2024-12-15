import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = new long[](N), Y = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", X[i], Y[i]);
    }

    X.sort, Y.sort;

    long res;
    foreach (i; 0 .. N) {
        res += abs(X[i] - X[N / 2]) + abs(Y[i] - Y[N / 2]);
    }

    res.writeln;
}
