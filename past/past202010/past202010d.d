import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group.array;

    int x = G[0][0] == '.' ? G[0][1].to!int : 0;
    int y = G[$-1][0] == '.' ? G[$-1][1].to!int : 0;

    auto M = G[1..max($-1,1)].filter!(g => g[0] == '.').array;
    int z = M.empty ? 0 : M.maxElement!"a[1]"[1].to!int;
    if (x <= y) x = max(x, z-y);
    else y = max(y, z-x);

    string res = format("%d %d", x, y);
    res.writeln;
}