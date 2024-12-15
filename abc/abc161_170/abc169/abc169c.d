import std;

void main() {
    long A, Bi, Bf;
    readf("%d %d.%d\n", A, Bi, Bf);

    long res = A * Bi + A * Bf / 100;
    res.writeln;
}
