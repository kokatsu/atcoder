import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res = K * pow(K - 1, N - 1);
    res.writeln;
}
