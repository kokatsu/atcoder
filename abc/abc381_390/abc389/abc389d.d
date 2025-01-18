import std;

void main() {
    long R;
    readf("%d\n", R);

    real s = R.to!real ^^ 2;

    long f(long x) {
        return floor(sqrt(s - (x.to!real + 0.5) ^^ 2) - 0.5).to!long;
    }

    long res = (iota(1, R).map!(i => f(i)).sum + R) * 4 - 3;

    res.writeln;
}
