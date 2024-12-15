import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = 800 * N - 200 * (N / 15);
    res.writeln;
}
