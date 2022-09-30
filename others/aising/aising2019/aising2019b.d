import std;

void main() {
    int N, A, B;
    readf("%d\n%d %d\n", N, A, B);

    auto P = readln.chomp.split.to!(int[]);

    auto Q = P.sort;

    auto lba = Q.lowerBound(A+1);
    auto ubb = Q.upperBound(B);

    int x1 = lba.length.to!int;
    int x3 = ubb.length.to!int;
    int x2 = N - x1 - x3;

    int res = min(x1, x2, x3);
    res.writeln;
}