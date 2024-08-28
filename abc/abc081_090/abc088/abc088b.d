import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    a.sort!"a > b";

    int res = a.zip(N.iota.map!(i => cos(i*PI).sgn.to!int)).map!(x => x[0] * x[1]).sum;
    res.writeln;
}