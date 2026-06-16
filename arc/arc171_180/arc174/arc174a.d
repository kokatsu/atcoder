import std;

void main() {
    long N, C;
    readfln("%d %d", N, C);

    long[] A = readln.chomp.split.to!(long[]);

    auto min = (long a, long b) => a < b ? a : b;
    auto max = (long a, long b) => a > b ? a : b;
    auto F = C >= 1 ? min : max, G = C >= 1 ? max : min;

    long res = A.sum, L, H, R;
    foreach (a; A) {
        H += a;
        L = F(L, H);
        R = G(R, H - L);
    }
    res += R * (C - 1);

    res.writeln;
}
