import std;

void main() {
    int T;
    readfln("%d", T);

    long[] V = new long[](T);
    foreach (ref v; V) {
        long L, R;
        readfln("%d %d", L, R);

        long D = R - L * 2 + 1;
        if (D >= 0) {
            v = D * (D + 1) / 2;
        }
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
