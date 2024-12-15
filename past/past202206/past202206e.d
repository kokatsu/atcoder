import std;

void main() {
    long N;
    readf("%d\n", N);

    long ok, ng = 10L ^^ 9 + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;

        (mid ^^ 2 < N ? ok : ng) = mid;
    }

    long D = N - ok ^^ 2;

    long res = D <= ok ? ok - D + 2 : D - ok;
    res.writeln;
}
