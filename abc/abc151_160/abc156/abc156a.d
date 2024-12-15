import std;

void main() {
    int N, R;
    readf("%d %d\n", N, R);

    int res = R;
    if (N < 10)
        res += 100 * (10 - N);

    res.writeln;
}
