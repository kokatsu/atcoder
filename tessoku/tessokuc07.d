import std;

void main() {
    long N;
    readf("%d\n", N);

    auto C = readln.chomp.split.to!(long[]);

    C.sort;

    auto S = C.cumulativeFold!"a + b".array.assumeSorted;

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long X;
        readf("%d\n", X);

        auto lb = S.lowerBound(X + 1);

        auto res = lb.length;
        res.writeln;
    }
}
