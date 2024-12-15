import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new dchar[][](N);
    foreach (i; 0 .. N)
        readf("%s\n", S[i]);

    auto T = new dchar[][](N);
    foreach (i; 0 .. N)
        readf("%s\n", T[i]);

    int res = int.max;
    foreach (i; 0 .. 4) {
        int diff = i % 2 == 0 ? i : 1;
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                if (S[j][k] != T[j][k]) {
                    ++diff;
                }
            }
        }

        res = min(res, diff);
        S = rotate(S);
    }

    res.writeln;
}

T[][] rotate(T)(T[][] mat) {
    auto r = mat.length, c = mat[0].length;
    auto ret = new T[][](c, r);
    foreach (i; 0 .. r) {
        foreach (j; 0 .. c) {
            ret[j][r - i - 1] = mat[i][j];
        }
    }
    return ret;
}
