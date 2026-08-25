import std;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long[] E = readln.chomp.split.to!(long[]);
    long[] C = readln.chomp.split.to!(long[]);

    long res = E.minElement * C.sum;
    res.writeln;
}
