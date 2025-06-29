import std;

void main() {
    long D;
    readf("%d\n", D);

    real S = D.to!real.sqrt;
    long SC = S.ceil.to!long;

    long res = SC ^^ 2 - D;
    foreach (i; 1 .. SC) {
        long N = D - i ^^ 2;
        real R = N.to!real.sqrt;
        long RF = R.floor.to!long, RC = R.ceil.to!long;
        res = min(res, N - RF ^^ 2, RC ^^ 2 - N);
    }

    res.writeln;
}
