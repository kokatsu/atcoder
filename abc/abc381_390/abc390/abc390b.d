import std;

void main() {
    int N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    string res = iota(1, N - 1).all!(i => A[i] ^^ 2 == A[i - 1] * A[i + 1]) ? "Yes" : "No";
    res.writeln;
}
