import std;

void main() {
    long N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    auto A = readln.chomp.split.to!(long[]);

    long[][] seq;
    long f, b;
    while (b < N) {
        if (Y <= A[b] && A[b] <=X) {
            ++b;
        }
        else {
            if (b - f > 0) seq ~= A[f..b];
            f = ++b;
        }
    }
    if (b - f > 0) seq ~= A[f..b];

    long res;
    foreach (s; seq) {
        auto len = s.length;
        long cntX, cntY, r;
        foreach (l; 0 .. len) {
            while (r < len && cntX * cntY == 0) {
                if (s[r] == X) ++cntX;
                if (s[r] == Y) ++cntY;
                ++r;
            }

            if (cntX * cntY > 0) res += len - r + 1;

            if (s[l] == X) --cntX;
            if (s[l] == Y) --cntY;
        }
    }

    res.writeln;
}