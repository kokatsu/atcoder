import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto a = readln.chomp.split.to!(long[]);

    a.sort!"a > b";

    auto c = a.cumulativeFold!"a + b".array.assumeSorted;

    auto res = c.lowerBound(M).length + 1;
    res.writeln;
}
