import std;
import core.checkedint;

void main() {
    auto X = readln.chomp;

    long M;
    readf("%d\n", M);

    auto Y = X.map!(x => x - '0').array;

    if (Y.length == 1) {
        writeln(Y[0] <= M ? 1 : 0);
        return;
    }

    bool f(long n) {
        long num;
        bool isOver;

        foreach (y; Y) {
            num = muls(num, n, isOver);
            num = adds(num, y, isOver);

            if (isOver || num > M)
                return false;
        }

        return true;
    }

    long mx = Y.maxElement, ok = mx, ng = M + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        (f(mid) ? ok : ng) = mid;
    }

    long res = ok - mx;
    res.writeln;
}
