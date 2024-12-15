import std;

void main() {
    int A, B, C, D, E;
    readf("%d\n%d\n%d\n%d\n%d", A, B, C, D, E);

    int res = min(A, B, C) + min(D, E) - 50;
    res.writeln;
}
