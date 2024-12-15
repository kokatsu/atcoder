import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    int M = A.countUntil(1).to!int;

    int L = (M + K - 2) / (K - 1);
    M = max(M, (K - 1) * L);
    int R = (N - M + K - 3) / (K - 1);

    int res = L + R;
    res.writeln;
}
