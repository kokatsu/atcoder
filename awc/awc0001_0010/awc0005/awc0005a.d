import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long[] P = readln.chomp.split.to!(long[]);

    long res = P.filter!(p => p % K == 0).sum;
    res.writeln;
}
