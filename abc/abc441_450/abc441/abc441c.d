import std;

void main() {
    long N, K, X;
    readfln("%d %d %d", N, K, X);

    long[] A = readln.chomp.split.to!(long[]);

    A.sort;

    long C, S;
    foreach_reverse (i; 0 .. K) {
        ++C;
        S += A[i];
        if (S >= X) {
            break;
        }
    }

    long res = -1;
    if (S >= X) {
        res = C + N - K;
    }

    res.writeln;
}
