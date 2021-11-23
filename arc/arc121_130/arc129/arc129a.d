import std;

void main() {
    long N, L, R;
    readf("%d %d %d\n", N, L, R);

    long res;
    foreach (i; 0 .. 64) {
        long b = 1L << i;

        if ((N >> i) & 1) {
            long l = max(L, b);
            long r = min(R, b*2-1);

            res += max(0, r-l+1);
        }
    }

    res.writeln;
}