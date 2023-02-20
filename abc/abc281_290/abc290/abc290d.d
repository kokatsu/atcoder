import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N, D, K;
        readf("%d %d %d\n", N, D, K);

        --K;

        long step = N / gcd(N, D);

        long res = D * K % N + K / step;
        res.writeln;
    }
}