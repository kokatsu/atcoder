import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    size_t res = iota(1, N - 1).count!(i => A[i - 1] < A[i] && A[i] > A[i + 1]);
    res.writeln;
}
