import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto factors = new int[](N + 1);
    foreach (i; 2 .. N + 1) {
        if (factors[i] > 0) {
            continue;
        }

        foreach (j; iota(i, N + 1, i)) {
            ++factors[j];
        }
    }

    int res;
    foreach (f; factors) {
        if (f >= K) {
            ++res;
        }
    }

    res.writeln;
}
