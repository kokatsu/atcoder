import std;
import core.checkedint;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    bool overflow;
    long res = 1, M = 10L ^^ K;
    foreach (a; A) {
        overflow = false;
        res = muls(res, a, overflow);
        if (overflow || res >= M) {
            res = 1;
        }
    }

    res.writeln;
}
