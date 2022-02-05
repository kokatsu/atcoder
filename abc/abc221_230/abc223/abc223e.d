import std;

void main() {
    long X, Y, A, B, C;
    readf("%d %d %d %d %d\n", X, Y, A, B, C);

    void check(ref bool flag, long x, long y, long a, long b, long c) {
        long remAY = y - (a + x - 1) / x;
        if (!flag && remAY > 0) {
            long remBY = remAY - (b + x - 1) / x;
            if (remBY > 0 && remBY >= (c + x - 1) / x) {
                flag = true;
            }

            long remBX = x - (b + remAY - 1) / remAY;
            if (remBX > 0 && remBX >= (c + remAY - 1) / remAY) {
                flag = true;
            }
        }
    }

    bool noOver;
    auto list = [A, B, C];
    foreach (l; list.permutations) {
        check(noOver, X, Y, l[0], l[1], l[2]);
        check(noOver, Y, X, l[0], l[1], l[2]);
    }

    if (noOver) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}