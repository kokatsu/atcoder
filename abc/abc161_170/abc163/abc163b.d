import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    int res = max(-1, N-A.sum);
    res.writeln;
}