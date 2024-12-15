import std;
import core.checkedint;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto a = readln.chomp.split.to!(long[]);

    a[] /= 2;

    bool isZero;
    long l = 1;
    foreach (A; a) {
        if (isZero)
            break;

        long g = gcd(l, A);
        l /= g;

        l = muls(l, A, isZero);
    }

    foreach (A; a) {
        isZero |= ((l / A) % 2 == 0);
    }

    long res;
    if (!isZero)
        res = ((M / l) + 1) / 2;

    res.writeln;
}
