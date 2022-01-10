import std;

void main() {
    int N;
    readf("%d\n", N);

    long amax = long.min, amin = long.max;
    long bmax = long.min, bmin = long.max;
    foreach (_; 0 .. N) {
        long x, y;
        readf("%d %d\n", x, y);

        amax = max(amax, x+y), amin = min(amin, x+y);
        bmax = max(bmax, x-y), bmin = min(bmin, x-y);
    }

    long res = max(amax-amin, bmax-bmin);
    res.writeln;
}