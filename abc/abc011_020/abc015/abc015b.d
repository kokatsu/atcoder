import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M = N - A.count!"a == 0"
        .to!int;

    int res = (A.sum + M - 1) / M;
    res.writeln;
}
