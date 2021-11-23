import std;

void main() {
    long N;
    readf("%d\n", N);

    long Ncubic = N.to!real.cbrt.floor.to!long;
    long res;
    foreach (A; 1 .. Ncubic+1) {
        long l = N / A;
        foreach (B; A .. l+1) {
            long C = l / B;
            if (C < B) {
                break;
            }

            res += C - B + 1;
        }
    }

    res.writeln;
}