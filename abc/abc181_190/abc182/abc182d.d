import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.cumulativeFold!"a + b".array;
    auto C = B.cumulativeFold!max.array;

    long res, pos;
    foreach (i; 0 .. N) {
        res = max(res, pos + C[i]);
        pos += B[i];
    }

    res.writeln;
}
