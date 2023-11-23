import std;

void main() {
    string N = readln.chomp;

    long M = N.to!long;
    long R = N.fold!((a, b) => a + (b - '0'))(0);

    if (M < 10) {
        writeln(1, M-1);
        return;
    }

    long res, base = 1;
    while (R > 0) {
        long d = min(9, R);

        res += base * d, base *= 10;
        R -= d;
    }

    base /= 10;

    if (res == M) {
        long f = res / base;
        if (f == 9) {
            res += base * 9;
        }
        else {
            res += base - base / 10;
        }
    }

    res.writeln;
}