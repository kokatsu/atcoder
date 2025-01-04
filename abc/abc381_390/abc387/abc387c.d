import std;

void main() {
    long L, R;
    readf("%d %d\n", L, R);

    long snake(long x) {
        if (x < 10) {
            return 0;
        }

        long[] D = x.to!string
            .map!(c => to!long(c - '0'))
            .array;
        long l = D.length.to!long;

        long res;
        foreach (i; 2 .. l) {
            foreach (j; 1L .. 10L) {
                res += j ^^ (i - 1);
            }
        }

        foreach (i; 1L .. D[0]) {
            res += i ^^ (l - 1);
        }

        long p = 1L;
        while (p < l) {
            if (D[p] >= D[0]) {
                res += D[0] ^^ (l - p);
                break;
            }
            res += D[p] * D[0] ^^ (l - p - 1);
            ++p;
        }

        if (p == l) {
            ++res;
        }

        return res;
    }

    long res = snake(R) - snake(L - 1);
    res.writeln;
}
