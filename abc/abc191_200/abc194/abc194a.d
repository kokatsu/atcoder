import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    A += B;

    int res;
    if (A >= 15 && B >= 8) res = 1;
    else if (A >= 10 && B >= 3) res = 2;
    else if (A >= 3) res = 3;
    else res = 4;

    res.writeln;
}