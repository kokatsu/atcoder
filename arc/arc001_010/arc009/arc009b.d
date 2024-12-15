import std;

void main() {
    auto b = readln.chomp.split.to!(int[]);

    int N;
    readf("%d\n", N);

    auto a = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", a[i]);

    auto c = new int[](10);
    foreach (i, x; b)
        c[x] = i.to!int;

    bool comp(string x, string y) {
        auto s = x.length, t = y.length;
        if (s != t)
            return s < t;

        foreach (u, v; zip(x, y)) {
            if (u == v)
                continue;
            return c[u - '0'] < c[v - '0'];
        }

        return false;
    }

    a.sort!((x, y) => comp(x, y));

    foreach (x; a)
        x.writeln;
}
