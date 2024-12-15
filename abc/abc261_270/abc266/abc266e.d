import std;

void main() {
    long N;
    readf("%d\n", N);

    auto probs = new real[][](N, 6);
    foreach (i; 0 .. 6)
        probs[N - 1][i] = to!real(i + 1);

    foreach_reverse (i; 0 .. N - 1) {
        foreach (j; 0 .. 6) {
            real stop = to!real(j + 1), next = 0.0;
            foreach (k; 0 .. 6) {
                next += probs[i + 1][k];
            }
            next /= 6.0;
            probs[i][j] = max(stop, next);
        }
    }

    real res = probs[0].sum / 6.0;
    writefln("%.10f", res);
}
