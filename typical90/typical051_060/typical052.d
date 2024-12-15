import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = 10 ^^ 9 + 7;

    long res = 1;
    foreach (_; 0 .. N) {
        auto A = readln.chomp.split.to!(long[]);
        res = (res * A.sum) % M;
    }

    res.writeln;
}
