import std;

void main() {
    long N, L;
    readf("%d %d\n", N, L);

    auto d = readln.chomp.split.to!(long[]);

    auto C = new long[](L);
    ++C[0];

    long pos;
    foreach (x; d) {
        pos = (pos + x) % L;
        ++C[pos];
    }

    long div = L / 3, rem = L % 3;
    long res;
    if (rem == 0) {
        foreach (i; 0 .. div) {
            res += C[i] * C[i + div] * C[i + 2 * div];
        }
    }

    res.writeln;
}
