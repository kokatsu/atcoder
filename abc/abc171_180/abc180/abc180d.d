import std;
import core.checkedint;

void main() {
    long X, Y, A, B;
    readf("%d %d %d %d\n", X, Y, A, B);

    long res, num = X;
    while (true) {
        bool isOver;
        long M = muls(num, A, isOver);
        long S = adds(num, B, isOver);
        isOver |= M > S;
        isOver |= M >= Y;
        if (isOver) break;

        num = M;
        ++res;
    }

    res += (Y - num - 1) / B;

    res.writeln;
}