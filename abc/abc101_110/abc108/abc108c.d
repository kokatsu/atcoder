import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res = (N / K) ^^ 3;

    if (K % 2 == 0) {
        res += ((N + K / 2) / K) ^^ 3;
    }

    res.writeln;
}