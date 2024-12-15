import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto p = readln.chomp.split.to!(int[]);

    p.sort;

    int res = p[0 .. K].sum;
    res.writeln;
}
