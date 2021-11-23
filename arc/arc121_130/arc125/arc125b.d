import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = 998244353;

    long Nsqrt = N.to!real.sqrt.floor.to!long;

    long res;
    foreach (i; 1 .. Nsqrt+1) {
        res = (res + (N / i - i) / 2 + 1) % M;
    }

    res.writeln;
}