import std;

void main() {
    int Y, M, D;
    readf("%d/%d/%d\n", Y, M, D);

    auto T = Date(Y, M, D);

    auto res = Date(4000, 1, 1);

    void solve(dchar u, dchar v, dchar[] s = [], int l = 0) {
        if (l == 8) {
            int y = s[0 .. 4].to!int, m = s[4 .. 6].to!int, d = s[6 .. 8].to!int;
            if (0 < m && m < 13 && 0 < d && d < 32 && valid!"days"(y, m, d)) {
                auto t = Date(y, m, d);
                if (t >= T && t < res) {
                    res = t;
                }
            }
            return;
        }

        solve(u, v, s ~ u, l + 1);
        solve(u, v, s ~ v, l + 1);
    }

    foreach (d1; digits[0 .. 4]) {
        foreach (d2; digits[2 .. 4]) {
            solve(d1, d2);
        }
    }

    writefln("%04d/%02d/%02d", res.year, res.month, res.day);
}
