import std;

void main() {
    int N, H, W;
    readf("%d\n%d\n%d\n", N, H, W);

    int res = (N - H + 1) * (N - W + 1);
    res.writeln;
}