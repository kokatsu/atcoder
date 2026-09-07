import std;

void main() {
    long N, T, C, D;
    readfln("%d %d %d %d", N, T, C, D);

    long[] W = readln.chomp.split.to!(long[]);

    long res = min(C, D) * W.count!(w => w >= T);
    res.writeln;
}
