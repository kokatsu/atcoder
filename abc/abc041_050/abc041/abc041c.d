import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto res = iota(1, N + 1).array;

    zip(a, res).sort!"a[0] > b[0]";

    writefln("%(%d\n%)", res);
}
