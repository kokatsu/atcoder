import std;

void main() {
    long A, B, N;
    readf("%d %d %d\n", A, B, N);

    long res = min(N, B-1) * A / B;
    res.writeln;
}