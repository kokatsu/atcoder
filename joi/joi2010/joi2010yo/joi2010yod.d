import std;

void main() {
    int n, k;
    readf("%d\n%d\n", n, k);

    auto cards = new string[](n);
    foreach (i; 0 .. n)
        readf("%s\n", cards[i]);

    bool[string] set;
    foreach (p; cards.permutations) {
        set[p[0 .. k].join] = true;
    }

    auto res = set.length;
    res.writeln;
}
