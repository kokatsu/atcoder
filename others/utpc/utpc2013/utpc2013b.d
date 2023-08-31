import std;

enum long A = 2013;
enum long B = 12;

void main() {
    auto input = readln.chomp.split.to!(long[]);
    long Y = input[0], M = input[1];

    long f(long x) {
        return x * B + x * (x + 1L) / 2;
    }

    long ok, ng = int.max.to!long, num = (Y - A) * B + M;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        (f(mid) < num ? ok : ng) = mid;
    }

    long y = A + ok, m = num - f(ok);
    writefln("%d %d", y, m);
}