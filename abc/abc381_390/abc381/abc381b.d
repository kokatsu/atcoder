import std;

void main() {
    dchar[] S;
    readf("%s\n", S);

    auto G = S.group.array;
    S.sort;
    auto H = S.group.array;

    bool ok = G.all!(g => g[1] == 2) && H.all!(h => h[1] == 2);

    string res = ok ? "Yes" : "No";
    res.writeln;
}
