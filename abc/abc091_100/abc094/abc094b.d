import std;

void main() {
    int N, M, X;
    readf("%d %d %d\n", N, M, X);

    auto A = readln.chomp.split.to!(int[]);

    A ~= X;
    A.sort;

    int P = A.countUntil(X).to!int;

    int res = min(P, M - P);
    res.writeln;
}
