import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res = (N % K == 0 ? 0 : 1);
    res.writeln;
}
