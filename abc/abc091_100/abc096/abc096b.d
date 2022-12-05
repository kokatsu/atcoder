import std;

void main() {
    int A, B, C, K;
    readf("%d %d %d\n%d\n", A, B, C, K);

    int M = max(A, B, C);

    int res = M;
    foreach (i; 0 .. K) res *= 2;

    res += A + B + C - M;

    res.writeln;
}