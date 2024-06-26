import std;

void main() {
    int N;
    readf("%d\n", N);

    int base = 36;
    dchar[] res;
    while (N > 0) {
        int M = N % base;
        res ~= M < 10 ? (M+'0').to!dchar : (M-10+'A').to!dchar;
        N /= base;
    }

    if (res.empty) res ~= '0';

    res.reverse;

    res.writeln;
}