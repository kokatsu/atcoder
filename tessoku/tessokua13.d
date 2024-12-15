import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto S = A.assumeSorted;

    long res;
    foreach (i, a; A) {
        res += S.lowerBound(a + K + 1).length.to!long - i - 1;
    }

    res.writeln;
}
