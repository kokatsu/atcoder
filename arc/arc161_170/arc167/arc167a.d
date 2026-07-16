import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    long[] A = readln.chomp.split.to!(long[]);

    A.sort;

    int D = N - M, W = D * 2 - 1;
    foreach (i; 0 .. D) {
        A[W - i] += A[i];
    }

    long res = A[D .. $].map!(a => a * a).sum;
    res.writeln;
}
