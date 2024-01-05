import std;

void main() {
    int A, B;
    readf("%d\n%d\n", A, B);

    int res;
    if (A < B) res = -1;
    if (A > B) res = 1;

    res.writeln;
}