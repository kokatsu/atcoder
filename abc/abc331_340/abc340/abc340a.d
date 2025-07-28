import std;

void main() {
    int A, B, D;
    readf("%d %d %d\n", A, B, D);

    string res = format("%(%d %)", iota(A, B + 1, D));
    res.writeln;
}
