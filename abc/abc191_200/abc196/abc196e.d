import std;

void main() {
    long N;
    readf("%d\n", N);

    long l = long.min / 2, u = long.max / 2, s;
    foreach (_; 0 .. N) {
        long a, t;
        readf("%d %d\n", a, t);

        if (t == 1)
            l += a, u += a, s += a;
        else if (t == 2)
            l = max(l, a), u = max(u, a);
        else
            l = min(l, a), u = min(u, a);
    }

    long Q;
    readf("%d\n", Q);

    auto x = readln.chomp.split.to!(long[]);

    auto res = x.map!(i => clamp(i + s, l, u)).array;

    writefln("%(%s\n%)", res);
}
