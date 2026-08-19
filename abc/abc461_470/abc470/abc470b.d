import std;

void main() {
    int N;
    readfln("%d", N);

    int[] C = readln.chomp.split.to!(int[]);

    int M;
    int[int] D;
    foreach (c; C) {
        M = max(M, ++D[c]);
    }

    int res = N - M;
    res.writeln;
}
