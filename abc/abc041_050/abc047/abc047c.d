import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.group.array;

    auto res = G.length.to!int - 1;
    res.writeln;
}
