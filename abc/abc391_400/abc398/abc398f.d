import std;

void main() {
    dchar[] S;
    readf("%s\n", S);

    dchar[] f(dchar[] x) {
        auto y = x.dup;
        y.reverse;

        dchar[] z = x ~ '#' ~ y;

        int M = z.length.to!int;
        auto KMP = new int[](M);
        KMP[0] = -1;
        for (int i = 1, j = -1; i < M; ++i) {
            while (j >= 0 && z[i] != z[j + 1]) {
                j = KMP[j];
            }

            if (z[i] == z[j + 1]) {
                ++j;
            }

            KMP[i] = j;
        }

        return y ~ x[KMP[M - 1] + 1 .. $];
    }

    S.reverse;

    auto res = f(S);
    res.reverse;

    res.writeln;
}
