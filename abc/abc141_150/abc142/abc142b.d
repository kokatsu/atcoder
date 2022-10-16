import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto h = readln.chomp.split.to!(int[]);

    auto s = h.sort;

    auto res = s.upperBound(K-1).length;
    res.writeln;
}