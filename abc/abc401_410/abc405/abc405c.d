import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto C = A.cumulativeFold!"a + b".array;

    long res;
    foreach (i, a; A) {
        res += a * (C[N - 1] - C[i]);
    }

    res.writeln;
}
