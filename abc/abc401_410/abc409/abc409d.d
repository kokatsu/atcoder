import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        dchar[] S;
        readf("%d\n%s\n", N, S);

        dchar c;
        int l, r = N;
        foreach (i; 1 .. N) {
            if (c == dchar.init) {
                if (S[i] < S[i - 1]) {
                    c = S[i - 1];
                    l = i;
                }
            }
            else if (c < S[i]) {
                r = i;
                break;
            }
        }

        dchar[] res = S.dup;
        if (c != dchar.init) {
            foreach (i; l .. r) {
                res[i - 1] = S[i];
            }
            res[r - 1] = c;
        }

        res.writeln;
    }
}
