import std;

void main() {
    int N, A, B, C, D;
    readf("%d %d %d %d %d\n", N, A, B, C, D);

    int X = (N + A - 1) / A * B, Y = (N + C - 1) / C * D;

    int res = min(X, Y);
    res.writeln;
}