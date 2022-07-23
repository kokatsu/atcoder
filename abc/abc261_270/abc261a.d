import std;

void main() {
    int L1, R1, L2, R2;
    readf("%d %d %d %d\n", L1, R1, L2, R2);

    int L = max(L1, L2), R = min(R1, R2);

    int res;
    if (L <= R) res = R - L;

    res.writeln;
}