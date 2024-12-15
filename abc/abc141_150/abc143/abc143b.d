import std;

void main() {
    long N;
    readf("%d\n", N);

    auto d = readln.chomp.split.to!(long[]);

    long res;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            res += d[i] * d[j];
        }
    }

    res.writeln;
}
