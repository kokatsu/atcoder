import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    auto G = S.group.array;

    long pair, cnt;
    foreach (g; G) {
        pair += g[1].to!long / 2;
        if (g[1] % 2 == 1) ++cnt;
    }

    long res = (cnt > 0 ? pair / cnt * 2 + 1 : pair * 2);
    res.writeln;
}