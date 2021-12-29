import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    foreach (i; 1 .. N+1) {
        long d = N / i;
        long l = i * d;
        res += d * (i + l) / 2;
    }

    res.writeln;
}