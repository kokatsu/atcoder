import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N % 5;

    int res = M > 2 ? N + 5 - M : N - M;
    res.writeln;
}
