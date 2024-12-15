import std;

void main() {
    int n, k;
    readf("%d %d\n", n, k);

    auto cards = new bool[](n + 1);
    bool blank;
    foreach (_; 0 .. k) {
        int c;
        readf("%d\n", c);

        if (c == 0) {
            blank = true;
        }
        else {
            cards[c] = true;
        }
    }

    int res;
    auto g = cards.group.array;
    foreach (i, x; g) {
        if (x[0] == false)
            continue;

        int num = blank ? x[1] + 1 : x[1];
        res = max(res, num);

        if (blank && i >= 2 && g[i - 1][1] == 1) {
            res = max(res, g[i - 2][1] + g[i - 1][1] + x[1]);
        }
    }

    res.writeln;
}
