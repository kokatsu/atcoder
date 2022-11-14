import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    real res = 0.0, P = 1.0 / N, Q = 0.5;
    foreach (i; 1 .. N+1) {
        res += P * Q ^^ max(0, ceil(log2(K.to!real/i)));
    }

    writefln("%.15f", res);
}