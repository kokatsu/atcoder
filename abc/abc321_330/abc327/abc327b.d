import std;

void main() {
    long B;
    readf("%d\n", B);

    if (B == 1) {
        writeln(1);
        return;
    }

    real R = log10(B.to!real);
    long N = 2;
    while (true) {
        long L = floor(R / log10(N.to!real)).to!long;
        if (L <= N) {
            long res = L ^^ L == B ? L : -1;
            res.writeln;
            return;
        }
        ++N;
    }
}
