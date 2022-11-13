import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = B;
    if (A <= 12) res /= 2;
    if (A <= 5) res = 0;

    res.writeln;
}