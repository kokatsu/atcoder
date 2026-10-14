import std;

void main() {
    long N, D, K;
    readfln("%d %d %d", N, D, K);

    long[] W = readln.chomp.split.to!(long[]);

    size_t res = W.count!(w => w > D * K);
    res.writeln;
}
