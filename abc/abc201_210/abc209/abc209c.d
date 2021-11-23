import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = readln.chomp.split.to!(long[]);

    long M = 10 ^^ 9 + 7;

    C.sort;

    long res = 1;
    foreach (i, c; C) {
        res = (res * (c - i) % M) % M;
    }

    res.writeln;
}