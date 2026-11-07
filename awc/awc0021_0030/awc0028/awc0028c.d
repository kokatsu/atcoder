import std;

void main() {
    int N;
    readfln("%d", N);

    long[] P = readln.chomp.split.to!(long[]);
    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    long M = N.iota.map!(i => P[i] - A[i]).maxElement;

    long res = A.sum - B.sum + M;
    res.writeln;
}
