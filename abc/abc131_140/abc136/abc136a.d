import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int res = C - min(C, A - B);
    res.writeln;
}
