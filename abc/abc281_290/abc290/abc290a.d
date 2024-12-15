import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    auto res = B.map!(b => A[b - 1]).array.sum;
    res.writeln;
}
