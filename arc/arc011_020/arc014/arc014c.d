import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    auto G = S.group.array;

    int res;
    foreach (g; G) {
        res += g[1].to!int % 2;
    }

    res.writeln;
}
