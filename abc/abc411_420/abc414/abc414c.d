import std;

enum long L = 10L ^^ 6;

bool isPalindrome(long x, long y) {
    char[] base;
    while (x > 0) {
        base ~= to!char(x % y + '0');
        x /= y;
    }

    auto L = base.length;
    foreach (i; 0 .. L / 2) {
        if (base[i] != base[L - 1 - i]) {
            return false;
        }
    }

    return true;
}

void main() {
    long A, N;
    readf("%d\n%d\n", A, N);

    long res;
    foreach (i; 1 .. L + 1) {
        if (i % 10 == 0) {
            continue;
        }

        long rev, tmp = i, d;
        while (tmp > 0) {
            rev = rev * 10L + tmp % 10L;
            tmp /= 10L, ++d;
        }

        long u = 10L ^^ (d - 1);
        long x = rev * u + i % u;
        if (x > N) {
            continue;
        }

        if (isPalindrome(x, A)) {
            res += x;
        }

        while (true) {
            long v = 10L ^^ d;
            long y = rev * v + i;
            if (y > N) {
                break;
            }

            if (isPalindrome(y, A)) {
                res += y;
            }

            ++d;
        }
    }

    res.writeln;
}
