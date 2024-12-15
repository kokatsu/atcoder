import std;

void main() {
    long m, n;
    readf("%d %d\n", m, n);

    long res = n + 1;
    if (m == 1)
        res = n + 2;
    if (m == 2)
        res = n * 2 + 3;
    if (m == 3)
        res = 2 ^^ (n + 3) - 3;

    res.writeln;
}
