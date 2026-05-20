import std;

enum long MOD = 998_244_353;

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y & 1) {
            res *= x;
            if (res > MOD)
                res %= MOD;
        }
        x *= x;
        if (x > MOD)
            x %= MOD;
        y >>= 1;
    }
    return res;
}

void main() {
    int Q;
    readfln("%d", Q);

    long N = 1, C = 1;
    auto L = DList!long(1);
    long[] R;
    foreach (_; 0 .. Q) {
        long[] query = readln.chomp.split.to!(long[]);
        if (query[0] == 1) {
            long x = query[1];
            N = (N * 10 + x) % MOD;
            L.insertBack(x);
            ++C;
        }
        else if (query[0] == 2) {
            long x = L.front;
            N = (N - x * powMod(10, C - 1) % MOD + MOD) % MOD;
            L.removeFront();
            --C;
        }
        else {
            R ~= N;
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
