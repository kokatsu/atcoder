import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.cumulativeFold!"a + b".array;
    auto C = A.cumulativeFold!"a + b * b"(0L).array;

    long res;
    foreach (i; 1 .. N) {
        res += A[i] * (A[i] * i - B[i-1] * 2) + C[i-1];
    }

    res.writeln;
}