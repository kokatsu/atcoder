import std;

enum int T = 400;

void main() {
    int A;
    readf("%d\n", A);

    int res = -1;
    if (T % A == 0) {
        res = T / A;
    }

    res.writeln;
}
