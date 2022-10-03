import std;

void main() {
    int N, K, M;
    readf("%d %d %d\n", N, K, M);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sum, T = N * M;

    int res = (T - S <= K ? max(0, T-S) : -1);
    res.writeln;
}