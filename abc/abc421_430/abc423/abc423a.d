import std;

void main() {
    long X, C;
    readf("%d %d\n", X, C);

    long ok, ng = X + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        long n = mid + mid / 1000 * C;
        (n <= X ? ok : ng) = mid;
    }

    long res = ok / 1000 * 1000;
    res.writeln;
}
