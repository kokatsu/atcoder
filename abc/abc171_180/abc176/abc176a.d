import std;

void main() {
    int N, X, T;
    readf("%d %d %d\n", N, X, T);

    int times = (N + X - 1) / X;

    int res = T * times;
    res.writeln;
}
