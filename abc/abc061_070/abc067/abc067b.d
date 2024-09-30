import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto l = readln.chomp.split.to!(int[]);

    l.sort!"a > b";

    int res = l[0..K].sum;
    res.writeln;
}