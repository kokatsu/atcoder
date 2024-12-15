import std;

void main() {
    uint n;
    readf("%d\n", n);

    auto v = readln.chomp.split.to!(int[]);

    auto odds = v.stride(2).array;
    auto og = odds.sort.group.array;
    og.sort!"a[1] > b[1]";

    auto evens = v[1 .. $].stride(2).array;
    auto eg = evens.sort.group.array;
    eg.sort!"a[1] > b[1]";

    uint res = n - og[0][1] - eg[0][1];
    if (og[0][0] == eg[0][0]) {
        if (og.length == 1 && eg.length == 1)
            res = n / 2;
        else if (og.length == 1)
            res = n - eg[1][1];
        else if (eg.length == 1)
            res = n - og[1][1];
        else
            res = min(n - og[0][1] - eg[1][1], n - og[1][1] - eg[0][1]);
    }

    res.writeln;
}
