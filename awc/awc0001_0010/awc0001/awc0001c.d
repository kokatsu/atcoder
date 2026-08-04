import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    long[] D = readln.chomp.split.to!(long[]);

    D.sort;

    long res = D[0 .. N - K].sum;
    res.writeln;
}
