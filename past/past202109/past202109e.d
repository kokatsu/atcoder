import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto c = readln.chomp.split.to!(long[]);
    auto p = readln.chomp.split.to!(long[]);

    long[long] dict;
    foreach (x, y; zip(c, p)) {
        if (x !in dict)
            dict[x] = long.max;
        dict[x] = dict[x].min(y);
    }

    auto v = dict.values;

    long res = -1;
    if (v.length >= K) {
        v.sort;
        res = v[0 .. K].sum;
    }

    res.writeln;
}
