import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int res = min(C, B/A);
    res.writeln;
}