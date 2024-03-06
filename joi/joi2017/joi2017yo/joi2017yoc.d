import std;

void main() {
    int N, M, D;
    readf("%d %d %d\n", N, M, D);

    auto S = new dchar[][](N);
    foreach (i; 0 .. N) readf("%s\n", S[i]);

    int res;
    foreach (_; 0 .. 2) {
        foreach (s; S) {
            int r;
            foreach (l, x; s) {
                while (r < s.length && r - l < D && s[r] == '.') {
                    ++r;
                }

                if (r - l == D) ++res;

                if (l == r) ++r;
            }
        }

        S = rotate(S);
    }

    res.writeln;
}

T[][] rotate(T)(T[][] mat) {
    auto r = mat.length, c = mat[0].length;
    auto ret = new T[][](c, r);
    foreach (i; 0 .. r) {
        foreach (j; 0 .. c) {
            ret[j][r-i-1] = mat[i][j];
        }
    }
    return ret;
}