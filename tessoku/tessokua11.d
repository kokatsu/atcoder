import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(int[]).assumeSorted;

    auto res = A.lowerBound(X+1).length;
    res.writeln;
}