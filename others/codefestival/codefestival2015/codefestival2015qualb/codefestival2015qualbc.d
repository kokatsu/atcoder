import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    A.sort!"a > b", B.sort!"a >b";

    bool isOk = N >= M && iota(M).all!(i => A[i] >= B[i]);

    string res = isOk ? "YES" : "NO";
    res.writeln;
}