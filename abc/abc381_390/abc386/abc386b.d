import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.group.array;

    uint res = G.map!(g => g[0] == '0' ? (g[1] + 1) / 2 : g[1]).sum;
    res.writeln;
}
