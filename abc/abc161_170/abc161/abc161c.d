import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long R = N % K;

    long res = min(R, K - R);
    res.writeln;
}
