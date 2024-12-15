import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;

    auto G = A.group;

    long res;
    foreach (g; G) {
        auto x = g[1].to!long;
        res += x * (x - 1) * (x - 2) / 6;
    }

    res.writeln;
}
