import std;
import core.checkedint;

void main() {
    long N;
    readf("%d\n", N);

    long ok, ng = N;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;

        long rem = mid, p;
        while (rem > 0) {
            rem /= 10, ++p;
        }

        bool isOver;
        long D = muls((10 ^^ p) + 1, mid, isOver);

        (!isOver && D <= N ? ok : ng) = mid;
    }

    ok.writeln;
}
