import std;

void main() {
    int N, K;
    string S;
    readf("%d %d\n%s\n", N, K, S);

    auto G = S.group.array;

    int one;
    foreach (i, g; G) {
        if (g[0] == '0') {
            continue;
        }

        if (++one == K) {
            G.swapAt(i, i - 1);
            break;
        }
    }

    string res = G.map!(g => g[0].repeat(g[1]).to!string).join;
    res.writeln;
}
