import std;

void main() {
    long N;
    string X;
    readf("%d %s\n", N, X);

    long d = X.maxElement - '0';

    foreach (i; d+1 .. 11) {
        long M, base = 1;
        foreach_reverse (x; X) {
            M += (x - '0') * base;
            base *= i;
        }

        if (M == N) {
            i.writeln;
            return;
        }
    }
}