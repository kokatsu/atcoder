import std;

void main() {
    int A, B, C, K;
    readf("%d %d %d %d\n", A, B, C, K);

    int res;

    int a = min(A, K);
    K -= a, res += a;

    int b = min(B, K);
    K -= b;

    int c = min(C, K);
    K -= c, res -= c;

    res.writeln;
}