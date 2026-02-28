import std;

void main() {
    string S;
    readfln("%s", S);

    dchar[] T = S.dup.to!(dchar[]);
    T.sort;

    auto G = T.group;
    uint M = G.map!(g => g[1]).maxElement;
    dchar[] U = G.filter!(g => g[1] == M)
        .map!(g => g[0])
        .array;
    dchar[dchar] R = U.assocArray(dchar('@').repeat);

    string res = S.translate(R).replace("@", "");
    res.writeln;
}
