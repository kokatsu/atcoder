import std;

void main() {
    long N;
    readf("%d\n", N);

    long C = to!real(long.max / 2).sqrt.floor.to!long;

    long f(long x, long a, long b, long c) {
        return a * x * x + b * x + c;
    }

    long g(long a, long b, long c) {
        long ok = 0, ng = C;
        while (ok + 1 < ng) {
            long mid = (ok + ng) / 2;
            if (f(mid, a, b, c) <= 0) {
                ok = mid;
            }
            else {
                ng = mid;
            }
        }
        if (f(ok, a, b, c) == 0) {
            return ok;
        }
        return -1;
    }

    for (long D = 1; D ^^ 3 <= N; ++D) {
        if (N % D != 0) {
            continue;
        }

        long M = N / D;
        long y = g(3, D * 3, D * D - M);
        if (y > 0) {
            writeln(y + D, " ", y);
            return;
        }
    }

    writeln(-1);
}
