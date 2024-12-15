import std;

void main() {
    int M, N;
    readf("%d %d\n", M, N);

    int res = M - M / N * (N - 1);
    res.writeln;
}
