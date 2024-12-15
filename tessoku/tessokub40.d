import std;

enum long M = 100;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto cnts = new long[](M);
    long res;
    foreach (a; A) {
        res += cnts[(M - a % M) % M];
        ++cnts[a % M];
    }

    res.writeln;
}
