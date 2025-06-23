import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group.array;

    auto L = new uint[](26);
    foreach (g; G) {
        int index = g[0] - 'a';
        L[index] = max(L[index], g[1]);
    }

    uint res = L.sum;
    res.writeln;
}
