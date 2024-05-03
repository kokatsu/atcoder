import std;

void main() {
    int n, m;
    string s;
    readf("%d\n%d\n%s\n", n, m, s);

    auto t = s.replace("IO", "X");
    auto g = t.group.array;
    auto l = g.length;

    int res;
    foreach (i, x; g) {
        if (x[0] != 'X') continue;

        if (i < l - 1 && g[i+1][0] == 'I') {
            res += max(0, x[1].to!int+1-n);
        }
        else {
            res += max(0, x[1].to!int-n);
        }
    }

    res.writeln;
}