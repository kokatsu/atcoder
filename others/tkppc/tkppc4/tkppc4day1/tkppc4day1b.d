import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(int[]);

    auto b = iota(1, N + 1).array;

    zip(a, b).sort;

    auto lb = a.assumeSorted.lowerBound(K);

    int res = lb.empty ? -1 : b[lb.length.to!int - 1];
    res.writeln;
}
