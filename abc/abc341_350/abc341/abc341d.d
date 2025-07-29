import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    long G = gcd(N, M);
    long L = N / G * M;

    long l, u = long.max / 2;
    while (u - l > 1) {
        long mid = (l + u) / 2;

        long num = mid / N + mid / M - (mid / L) * 2;
        (num < K ? l : u) = mid;
    }

    long res = u;
    res.writeln;
}
