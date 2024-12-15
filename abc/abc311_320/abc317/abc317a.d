import std;

void main() {
    int N, H, X;
    readf("%d %d %d\n", N, H, X);

    auto P = readln.chomp.split.to!(int[]).assumeSorted;

    auto lb = P.lowerBound(X - H);

    auto res = lb.length + 1;
    res.writeln;
}
