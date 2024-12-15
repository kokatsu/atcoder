import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto c = new int[](m);
    foreach (_; 0 .. n) {
        auto a = readln.chomp.split.to!(int[]);
        c[] += a[];
    }

    auto res = iota(1, m + 1).array;

    zip(c, res).sort!((x, y) => x[0] == y[0] ? x[1] < y[1] : x[0] > y[0]);

    writefln("%(%s %)", res);
}
