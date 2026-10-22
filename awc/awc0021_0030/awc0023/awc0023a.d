import std;

void main() {
    long N, M, R;
    readfln("%d %d %d", N, M, R);

    long[] T = readln.chomp.split.to!(long[]);

    long res = T.sum + M * R;
    res.writeln;
}
