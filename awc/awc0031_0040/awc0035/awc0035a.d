import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    long[] P = readln.chomp.split.to!(long[]);

    foreach (_; 0 .. M) {
        long U, V, W;
        readfln("%d %d %d", U, V, W);

        P[U - 1] -= W;
        P[V - 1] += W;
    }

    long res = P.maxIndex + 1;
    res.writeln;
}
