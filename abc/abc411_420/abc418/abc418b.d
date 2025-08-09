import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t[] C;
    foreach (i, s; S) {
        if (s == 't') {
            C ~= i;
        }
    }

    real res = 0.0;
    size_t L = C.length;
    if (L >= 2) {
        foreach (i; 0 .. L - 1) {
            foreach (j; i + 1 .. L) {
                size_t D = C[j] - C[i];
                if (D < 2) {
                    continue;
                }

                size_t N = j - i;
                res = max(res, (N - 1).to!real / (D - 1));
            }
        }
    }

    writefln("%.20f", res);
}
