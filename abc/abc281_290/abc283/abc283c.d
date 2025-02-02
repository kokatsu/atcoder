import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.group.array;

    long res;
    foreach (g; G) {
        if (g[0] == '0') {
            res += (g[1] + 1) / 2;
        }
        else {
            res += g[1];
        }
    }

    res.writeln;
}
