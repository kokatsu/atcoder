import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    long[][] mat1 = [
        [0, 1, 1],
        [1, 0, 1],
        [1, 1, 0]
    ];

    mat1 = matPowMod(mat1, 2);

    long[][] mat2 = [
        [0, 1, 1],
        [1, 0, 1],
        [0, 0, 0]
    ];

    long[][] mat = matMulMod(mat1, mat2);

    long[][] M = matPowMod(mat, N);

    long res;
    foreach (m; M) {
        res = (res + m[0] + m[1]) % MOD;
    }

    res.writeln;
}

long[][] matMulMod(long[][] a, long[][] b) {
    long l = a[0].length.to!long;

    assert(l == b.length);

    auto res = new long[][](a.length, b[0].length);
    foreach (i, r; res) {
        foreach (k; 0 .. l) {
            foreach (j, ref e; r) {
                e = (e + a[i][k] * b[k][j]) % MOD;
            }
        }
    }

    return res;
}

long[][] matPowMod(long[][] mat, long p) {
    long l = mat[0].length.to!long;

    assert(l == mat.length);

    auto res = new long[][](l, l);
    foreach (i; 0 .. l) {
        res[i][i] = 1;
    }

    while (p > 0) {
        if (p & 1) {
            res = matMulMod(res, mat);
        }
        mat = matMulMod(mat, mat);
        p >>= 1;
    }

    return res;
}