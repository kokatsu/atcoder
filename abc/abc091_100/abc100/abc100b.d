import std;

void main() {
    int D, N;
    readf("%d %d\n", D, N);

    int res = (N != 100 ? 100 ^^ D * N : 100 ^^ D * (N + 1));
    res.writeln;
}