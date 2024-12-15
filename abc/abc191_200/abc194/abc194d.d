import std;

void main() {
    int N;
    readf("%d\n", N);

    real res = 0.0, M = N.to!real;
    foreach (i; 1 .. N) {
        res += M / i;
    }

    writefln("%.10f", res);
}
