import std;

void main() {
    long N;
    readf("%d\n", N);

    auto cnts = new long[](N);
    foreach (i; 1 .. N) {
        foreach (j; iota(i, N, i)) {
            ++cnts[j];
        }
    }

    long res;
    foreach (i; 1 .. N) {
        res += cnts[i] * cnts[N - i];
    }

    res.writeln;
}
