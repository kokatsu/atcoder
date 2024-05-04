import std;

void main() {
    long N, A;
    string S;
    readf("%d %d\n%s\n", N, A, S);

    long C = 0;
    long[] L, R;
    foreach (i, s; S) {
        if (s == '.') continue;

        ++C;

        if (i + 1 <= A) L ~= to!long(i+1);
        else R ~= to!long(i+1);
    }

    R.reverse;

    bool toLeft;
    long res, pos = A;
    while (C > 0) {
        if (toLeft) {
            if (L.empty) {
                res += pos;
                pos = 0;
            }
            else {
                res += pos - L.back;
                pos = L.back;
                L.popBack;
                --C;
            }
            toLeft = false;
        }
        else {
            if (R.empty) {
                res += N + 1 - pos;
                pos = N + 1;
            }
            else {
                res += R.back - pos;
                pos = R.back;
                R.popBack;
                --C;
            }
            toLeft = true;
        }
    }

    res.writeln;
}