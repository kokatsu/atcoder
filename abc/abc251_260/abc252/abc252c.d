import std;

void main() {
    int N;
    readf("%d\n", N);

    auto list = new int[][](10);
    foreach (_; 0 .. N) {
        auto S = readln.chomp;
        foreach (i, s; S) {
            list[s - '0'] ~= i.to!int;
        }
    }

    int res = int.max;
    foreach (i; 0 .. 10) {
        list[i].sort;

        int mx, pos;
        auto g = list[i].group;
        foreach (x; g) {
            if (x[1] >= mx) {
                mx = x[1], pos = x[0];
            }
        }

        int num = 10 * (mx - 1) + pos;
        res = min(res, num);
    }

    res.writeln;
}
