import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.group.array;

    auto F = G.filter!"a[1] >= 3";

    string res = F.empty ? "draw" : F.front[0].to!string;
    res.writeln;
}
