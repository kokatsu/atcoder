import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    real res = 6.0 * (K - 1) * (N - K) + 3.0 * (N - 1) + 1.0;
    res /= (N ^^ 3);

    writefln("%.15f", res);
}
