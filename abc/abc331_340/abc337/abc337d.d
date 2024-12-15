import std;

void main() {
    int H, W, K;
    readf("%d %d %d\n", H, W, K);

    auto S = new dchar[][](H, W);
    foreach (i; 0 .. H)
        S[i] = readln.chomp.to!(dchar[]);

    int res = int.max;
    foreach (_; 0 .. 2) {
        foreach (i; 0 .. H) {
            int num, r;
            foreach (l; 0 .. W) {
                while (r < W && r - l < K && S[i][r] != 'x') {
                    if (S[i][r] == '.')
                        ++num;
                    ++r;
                }

                if (r - l == K)
                    res = min(res, num);

                if (l == r) {
                    ++r;
                }
                else {
                    if (S[i][l] == '.')
                        --num;
                }
            }
        }

        S = rotate(S);
        swap(H, W);
    }

    if (res == int.max)
        res = -1;

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
