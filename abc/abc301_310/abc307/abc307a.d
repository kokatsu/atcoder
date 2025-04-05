import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    assert(A.length == N * 7);

    auto res = new int[](N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. 7) {
            res[i] += A[i * 7 + j];
        }
    }

    writefln("%(%d %)", res);
}
