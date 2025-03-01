import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group.array;

    int res = -1;
    if (G.length > 1) {
        res = G.filter!(g => g[0] == 'o')
            .array
            .map!(g => g[1])
            .array
            .maxElement;
    }

    res.writeln;
}
