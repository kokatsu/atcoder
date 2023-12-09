import std;
import core.bitop;

void main() {
    ulong N, D;
    readf("%d %d\n", N, D);

    auto C = new ulong[](D);
    foreach (i; 0 .. D) {
        string S;
        readf("%s\n", S);

        foreach (j, s; S) {
            if (s == 'o') C[i] |= 1 << j;
        }
    }

    int res;
    foreach (i; 0 .. D-1) {
        foreach (j; i+1 .. D) {
            res = max(res, popcnt(C[i]|C[j]));
        }
    }

    res.writeln;
}