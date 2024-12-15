import std;

void main() {
    int N, K, X, Y;
    readf("%d\n%d\n%d\n%d\n", N, K, X, Y);

    int res = min(N, K) * X + max(0, N - K) * Y;
    res.writeln;
}
