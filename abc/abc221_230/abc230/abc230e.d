import std;

void main() {
    long N;
    readf("%d\n", N);

    long K = N.to!real.sqrt.floor.to!long;
    
    long res = - K * K;
    foreach (i; 1 .. K+1) {
        res += 2 * (N / i);
    }

    res.writeln;
}