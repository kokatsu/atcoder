import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int[] res;
    foreach (i; 1 .. N) {
        if (abs(A[i - 1] - A[i]) == 1) {
            res ~= A[i - 1];
        }
        else if (A[i - 1] < A[i]) {
            res ~= iota(A[i - 1], A[i]).array;
        }
        else {
            res ~= iota(A[i - 1], A[i], -1).array;
        }
    }

    res ~= A[N - 1];

    writefln("%(%d %)", res);
}
