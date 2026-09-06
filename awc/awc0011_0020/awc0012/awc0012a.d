import std;

void main() {
    long N, T;
    readfln("%d %d", N, T);

    long[] H = readln.chomp.split.to!(long[]);
    long[] C = readln.chomp.split.to!(long[]);

    long res = N.iota
        .filter!(i => H[i] <= T)
        .map!(i => C[i])
        .sum;
    res.writeln;
}
