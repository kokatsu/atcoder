import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto b = a.dup;
    b[] -= 1;

    auto c = a.dup;
    c[] += 1;

    a ~= b ~ c;
    a.sort;

    auto g = a.group.array;

    g.sort!((x, y) => x[1] > y[1]);

    auto res = g[0][1];
    res.writeln;
}
