import std;

void main() {
    long N, M, D;
    readfln("%d %d %d", N, M, D);

    long[] T = readln.chomp.split.to!(long[]);

    long res = T.map!(t => (max(0, t - M) + D - 1) / D).sum;
    res.writeln;
}
