import std;

void main() {
    long N;
    readf("%d\n", N);

    long S = N.to!real.sqrt.floor.to!long;

    long[] res;
    foreach (i; 1 .. S+1) {
        if (N % i == 0) {
            res ~= i;
            if (i * i != N) {
                res ~= N / i;
            }
        }
    }

    res.sort;

    writefln("%(%s\n%)", res);
}