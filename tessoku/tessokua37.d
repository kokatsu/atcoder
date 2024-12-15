import std;

void main() {
    long N, M, B;
    readf("%d %d %d\n", N, M, B);

    auto A = readln.chomp.split.to!(long[]);
    auto C = readln.chomp.split.to!(long[]);

    long res = M * A.sum + N * C.sum + N * M * B;
    res.writeln;
}
