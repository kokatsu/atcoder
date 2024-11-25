import std;

void main() {
    int A, B, C, K, S, T;
    readf("%d %d %d %d\n%d %d\n", A, B, C, K, S, T);

    int res = A * S + B * T;
    if (S + T >= K) {
        res -= C * (S + T);
    }

    res.writeln;
}