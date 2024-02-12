import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int S = A + B + C;

    int res = S <= 4 ? 1 : 2;
    res.writeln;
}