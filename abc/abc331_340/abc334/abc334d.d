import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto R = readln.chomp.split.to!(long[]);

    R.sort;

    auto C = R.cumulativeFold!"a + b".array.assumeSorted;

    foreach (_; 0 .. Q) {
        long X;
        readf("%d\n", X);

        auto res = C.lowerBound(X+1).length;
        res.writeln;
    }
}