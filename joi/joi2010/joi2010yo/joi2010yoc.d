import std;

void main() {
    int n, m;
    readf("%d\n%d\n", n, m);

    auto friends = new int[][](n + 1);
    foreach (_; 0 .. m) {
        int a, b;
        readf("%d %d\n", a, b);

        friends[a] ~= b, friends[b] ~= a;
    }

    auto invitation = new bool[](n + 1);
    foreach (f; friends[1]) {
        invitation[f] = true;

        foreach (g; friends[f]) {
            if (g > 1)
                invitation[g] = true;
        }
    }

    auto res = invitation.count(true);
    res.writeln;
}
