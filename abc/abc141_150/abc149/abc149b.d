import std;

void main() {
    long A, B, K;
    readf("%d %d %d\n", A, B, K);

    long x = min(A, K);
    A -= x, K -= x;

    long y = min(B, K);
    B -= y, K -= y;

    writeln(A, " ", B);
}
