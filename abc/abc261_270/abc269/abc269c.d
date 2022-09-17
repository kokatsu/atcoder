import std;

void main() {
    long N;
    readf("%d\n", N);

    auto bin = N.to!string(2);
    auto len = bin.length;

    auto isBit = new bool[](len);
    foreach (i, b; bin) {
        if (b == '1') isBit[i] = true;
    }

    long[] res;

    void f(long num, long pos = len) {
        if (pos <= 0) {
            res ~= num;
        }
        else {
            if (isBit[pos-1]) f(num+(1L<<(len-pos)), pos-1);
            f(num, pos-1);
        }
    }

    f(0);

    res.sort;

    foreach (r; res) r.writeln;
}