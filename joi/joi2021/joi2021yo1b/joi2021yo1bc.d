import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto idx = A.maxIndex;

    int[] res = [A[0..idx].sum, A[idx+1..N].sum];
    writefln("%(%d\n%)", res);
}