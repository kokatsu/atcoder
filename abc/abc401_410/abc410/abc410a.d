import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int K;
    readf("%d\n", K);

    auto res = A.filter!(a => a >= K).walkLength;
    res.writeln;
}
