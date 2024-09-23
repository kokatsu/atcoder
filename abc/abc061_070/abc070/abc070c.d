import std;

void main() {
    int N;
    readf("%d\n", N);

    long res;
    foreach (i; 0 .. N) {
        long T;
        readf("%d\n", T);

        if (i == 0) {
            res = T;
        }

        long G = gcd(res, T);
        res = res / G * T;
    }

    res.writeln;
}