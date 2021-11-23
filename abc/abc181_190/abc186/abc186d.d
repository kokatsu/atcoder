import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;
    auto B = A.cumulativeFold!((a, b) => a + b).array;

    long res;
    foreach (i; 0 .. N-1) {
        res += (B[N-1] - B[i]) - (N - i - 1) * A[i];
    }

    res.writeln;
}