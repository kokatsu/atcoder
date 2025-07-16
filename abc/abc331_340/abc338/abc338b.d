import std;

void main() {
    dchar[] S;
    readf("%s\n", S);

    S.sort;

    auto G = S.group.array;

    uint M = G.map!(g => g[1]).maxElement;

    dchar res = G.filter!(g => g[1] == M).front[0];
    res.writeln;
}
