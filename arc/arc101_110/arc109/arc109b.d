import std;

void main() {
    long n;
    readf("%d\n", n);

    long ok, ng = int.max.to!long;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        (mid * (mid + 1) / 2 <= n + 1 ? ok : ng) = mid;
    }

    long res = n - ok + 1;
    res.writeln;
}
