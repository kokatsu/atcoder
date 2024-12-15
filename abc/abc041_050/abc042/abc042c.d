import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto D = readln.chomp.split.to!(int[]);

    auto ok = new bool[](10);
    ok[] = true;
    foreach (x; D) {
        ok[x] = false;
    }
    int M = ok.countUntil(true).to!int;

    int L = ilog10(N) + 1;
    auto res = new int[](L + 1);
    foreach_reverse (i; 1 .. L + 1) {
        res[i] += N % 10;
        res[i - 1] += res[i] / 10;
        res[i] %= 10;
        N /= 10;

        bool up;
        while (!ok[res[i]]) {
            up = true;
            if (res[i] == 9) {
                ++res[i - 1];
                res[i] = 0;
            }
            else {
                ++res[i];
            }
        }
        if (up) {
            res[i + 1 .. $] = M;
        }
    }

    if (res[0] == 0) {
        res = res[1 .. $];
    }
    else {
        while (!ok[res[0]]) {
            ++res[0];
        }
        res[1 .. $] = M;
    }

    writefln("%(%d%)", res);
}

T ilog10(T)(in T x) pure nothrow @safe @nogc if (isIntegral!T && T.sizeof <= 8)
in {
    assert(x > 0);
}
do {
    static if (T.sizeof == 8) {
        if (x >= 10_000_000_000_000_000_000UL) {
            return 19;
        }
        if (x >= 1_000_000_000_000_000_000UL) {
            return 18;
        }
        if (x >= 100_000_000_000_000_000UL) {
            return 17;
        }
        if (x >= 10_000_000_000_000_000UL) {
            return 16;
        }
        if (x >= 1_000_000_000_000_000UL) {
            return 15;
        }
        if (x >= 100_000_000_000_000UL) {
            return 14;
        }
        if (x >= 10_000_000_000_000UL) {
            return 13;
        }
        if (x >= 1_000_000_000_000UL) {
            return 12;
        }
        if (x >= 100_000_000_00UL) {
            return 11;
        }
        if (x >= 10_000_000_000UL) {
            return 10;
        }
    }
    static if (T.sizeof >= 4) {
        if (x >= 1_000_000_000UL) {
            return 9;
        }
        if (x >= 100_000_000UL) {
            return 8;
        }
        if (x >= 10_000_000UL) {
            return 7;
        }
        if (x >= 1_000_000UL) {
            return 6;
        }
        if (x >= 100_000UL) {
            return 5;
        }
    }
    static if (T.sizeof >= 2) {
        if (x >= 10_000UL) {
            return 4;
        }
        if (x >= 1_000UL) {
            return 3;
        }
    }
    if (x >= 100UL) {
        return 2;
    }
    if (x >= 10L) {
        return 1;
    }
    return 0;
}
