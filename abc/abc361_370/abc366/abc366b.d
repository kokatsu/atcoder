import std;

void main() {
    int N;
    readf("%d\n", N);

    size_t L;
    dchar[][] S = new dchar[][](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);

        L = max(L, S[i].length);
    }

    dchar[][] M = new dchar[][](N, L);
    foreach (i; 0 .. N) {
        M[i][] = '*';
        M[i][0 .. S[i].length] = S[i];
    }
    M = rotate(M);

    foreach (i; 0 .. L) {
        while (M[i].back == '*') {
            M[i].popBack;
        }
    }

    string res = format("%-(%s\n%)", M);
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
