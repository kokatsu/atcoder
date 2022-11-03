import std;

void main() {
    long L, R;
    readf("%d %d\n", L, R);

    long MOD = 2019;

    long res;
    if (R - L < MOD) {
        res = MOD;
        foreach (i; L .. R) {
            foreach (j; i+1 .. R+1) {
                res = min(res, i*j%MOD);
            }
        }
    }

    res.writeln;
}