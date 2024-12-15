import std;

void main() {
    int N, K;
    readf("%d\n%d\n", N, K);

    int M = K.log2.ceil.to!int;

    int res = (N - M > 0 ? 2 ^^ M + (N - M) * K : 2 ^^ N);
    res.writeln;
}
