import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    G.sort!"a[1] == b[1] ? a[0] < b[0] : a[1] < b[1]";

    auto res = max(0, G.length.to!int-K).iota.map!(i => G[i][1]).sum;
    res.writeln;
}