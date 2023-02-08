import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    int X = B * C, Y = A * D;

    string res = "DRAW";
    if (X > Y) res = "TAKAHASHI";
    if (X < Y) res = "AOKI";

    res.writeln;
}