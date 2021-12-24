import std;

void main() {
    long N;
    readf("%d\n", N);

    auto f = new long[](N+1);
    f[1..$] = 1;
    foreach (i; 2 .. N+1) {
        foreach (j; iota(i, N+1, i)) {
            ++f[j];
        }
    }

    long res;
    foreach (i; 1 .. N+1) {
        res += i * f[i];
    }

    res.writeln;
}