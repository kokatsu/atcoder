import std;

void main() {
    long n, k;
    readf("%d %d\n", n, k);

    long res;
    foreach (i; 0 .. 11) {
        long cnt;

        foreach (j; 1 .. 6) {
            long rem = ((i + 1) * 63 + j * 9 + 9) % 11;
            if (rem == k)
                ++cnt;
        }

        res += cnt * (n - i + 8) / 11;
    }

    res.writeln;
}
