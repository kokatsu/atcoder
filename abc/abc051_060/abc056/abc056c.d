import std;

void main() {
    long X;
    readf("%d\n", X);

    long ok = X, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long s = mid * (mid + 1) / 2;
        (X <= s ? ok : ng) = mid;
    }

    long res = ok;
    res.writeln;
}