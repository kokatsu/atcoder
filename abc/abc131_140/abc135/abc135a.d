import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long K = A + B;

    if (K % 2 == 0) writeln(K/2);
    else writeln("IMPOSSIBLE");
}