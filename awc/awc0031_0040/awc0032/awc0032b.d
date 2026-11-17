import std;

void main() {
    long N, K, M;
    readfln("%d %d %d", N, K, M);

    long[] A = readln.chomp.split.to!(long[]);

    long D = K + M;

    long res = A.map!(a => (a + D - 1) / D).sum;
    res.writeln;
}
