import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    int res;
    foreach (i; 0 .. N-1) {
        if (A[i] + 1 < A[i+1]) res = A[i] + 1;
    }

    res.writeln;
}