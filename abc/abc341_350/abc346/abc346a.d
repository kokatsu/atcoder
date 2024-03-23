import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto B = iota(1, N).map!(i => A[i-1] * A[i]);
    writefln("%(%s %)", B);
}