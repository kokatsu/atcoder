import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    long res = N, p;
    foreach (i; 1 .. N - 1) {
        if (A[i + 1] - A[i] != A[i] - A[i - 1]) {
            long d = i - p;
            res += d * (d + 1) / 2;
            p = i;
        }
    }

    long d = N - p - 1;
    res += d * (d + 1) / 2;

    res.writeln;
}
