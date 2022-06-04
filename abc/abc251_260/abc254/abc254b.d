import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[][](N);
    foreach (i; 0 .. N) {
        A[i].length = i + 1;
        foreach (j; 0 .. i+1) {
            A[i][j] = (j == 0 || j == i ? 1 : A[i-1][j-1] + A[i-1][j]);
        }
    }

    foreach (a; A) writefln("%(%s %)", a);
}