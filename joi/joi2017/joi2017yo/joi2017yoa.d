import std;

void main() {
    int A, B, C, D, E;
    readf("%d\n%d\n%d\n%d\n%d\n", A, B, C, D, E);

    int res = (A < 0 ? -A * C + D : 0) + (B - max(0, A)) * E;
    res.writeln;
}
