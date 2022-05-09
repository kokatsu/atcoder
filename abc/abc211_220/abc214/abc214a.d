import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = 8;
    if (N <= 125) res = 4;
    else if (N <= 211) res = 6;

    res.writeln;
}