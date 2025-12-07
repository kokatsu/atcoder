import std;

void main() {
    int N, K;
    string S;
    readf("%d %d\n%s\n", N, K, S);

    auto G = S.group.array;

    uint res = G.filter!(g => g[0] == 'O')
        .map!(g => g[1] / K)
        .sum;
    res.writeln;
}
