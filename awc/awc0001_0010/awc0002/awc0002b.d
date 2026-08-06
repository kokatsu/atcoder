import std;

void main() {
    int N, M, K;
    readfln("%d %d %d", N, M, K);

    long[] A = readln.chomp.split.to!(long[]);
    int[] B = readln.chomp.split.to!(int[]);

    B[] -= 1;

    bool[int] D = B.assocArray(true.repeat);

    long[] C = A.zip(N.iota).filter!(a => a[0] < K && D.get(a[1], false))
        .map!(a => a[0])
        .array;

    string res = format("%d %d", C.length, C.sum);
    res.writeln;
}
