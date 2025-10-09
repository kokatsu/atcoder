import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int[] A = readln.chomp.split.to!(int[]);

    A.sort;

    int D = N - K;

    int res = iota(K + 1).map!(i => A[i + D - 1] - A[i]).minElement;
    res.writeln;
}
