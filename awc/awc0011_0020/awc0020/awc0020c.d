import std;

void main() {
    int N;
    readfln("%d", N);

    long[] V = readln.chomp.split.to!(long[]);

    V.sort;

    long res = iota(N - 1).map!(i => V[i + 1] - V[i]).sum;
    res.writeln;
}
