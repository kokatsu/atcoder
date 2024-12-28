import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    int M = int.max;
    auto m = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", m[i]);
        X -= m[i];
        M = min(M, m[i]);
    }

    int res = N + X / M;
    res.writeln;
}
