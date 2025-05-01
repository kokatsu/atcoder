import std;

void main() {
    int N, Q;
    dchar[] S;
    readf("%d\n%s\n%d\n", N, S, Q);

    auto t = new int[](Q), x = new int[](Q);
    auto c = new dchar[](Q);
    foreach (i; 0 .. Q) {
        readf("%d %d %c\n", t[i], x[i], c[i]);
    }

    auto res = new dchar[](N);
    int num;

    dchar getCase(dchar d) {
        if (num == 2) {
            return std.uni.toLower(d);
        }

        if (num == 3) {
            return std.uni.toUpper(d);
        }

        return d;
    }

    foreach_reverse (i; 0 .. Q) {
        if (t[i] != 1) {
            if (num == 0) {
                num = t[i];
            }
            continue;
        }

        if (std.uni.isAlpha(res[x[i] - 1])) {
            continue;
        }

        res[x[i] - 1] = getCase(c[i]);
    }

    foreach (i; 0 .. N) {
        if (std.uni.isAlpha(res[i])) {
            continue;
        }

        res[i] = getCase(S[i]);
    }

    res.writeln;
}
