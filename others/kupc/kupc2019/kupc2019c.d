import std;

void main() {
    long M, K;
    readf("%d %d\n", M, K);

    long res = 1, num = K;
    while (num < M) {
        ++res, num += (num * 2 + 1) * K;
    }

    res.writeln;
}
