import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long res;
    foreach (i, a; A) {
        res += a;
        if (i >= K - 1) {
            res.writeln;
            res -= A[i+1-K];
        }
    }
}