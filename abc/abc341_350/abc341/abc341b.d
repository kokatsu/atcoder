import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    foreach (i; 1 .. N) {
        long S, T;
        readf("%d %d\n", S, T);

        A[i] += A[i - 1] / S * T;
    }

    long res = A[N - 1];
    res.writeln;
}
