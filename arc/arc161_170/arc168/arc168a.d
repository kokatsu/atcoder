import std;

void main() {
    int N;
    readfln("%d", N);

    string S;
    readfln("%s", S);

    auto G = S.group.array;

    long res;
    foreach (g; G) {
        if (g[0] == '>') {
            long c = g[1].to!long;
            res += c * (c + 1) / 2;
        }
    }

    res.writeln;
}
