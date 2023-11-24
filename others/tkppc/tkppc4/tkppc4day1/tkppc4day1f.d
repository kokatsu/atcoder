import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = new long[][](N);
    foreach (i; 0 .. N) A[i] = readln.chomp.split.to!(long[]);

    auto B = new long[][](N);
    foreach (i; 0 .. N) B[i] = readln.chomp.split.to!(long[]);

    long res;
    foreach (i; 0 .. N) {
        long next = long.max;
        foreach (j; 0 .. M) {
            long num = (res + A[i][j] - 1) / A[i][j] * A[i][j] + B[i][j];
            next = min(next, num);
        }
        res = next;
    }

    res.writeln;
}