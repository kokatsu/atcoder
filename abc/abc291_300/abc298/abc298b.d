import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](N);
    foreach (i; 0 .. N) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    auto B = new int[][](N);
    foreach (i; 0 .. N) {
        B[i] = readln.chomp.split.to!(int[]);
    }

    foreach (_; 0 .. 4) {
        bool isOk = true;

        foreach (i; 0 .. N) {
            foreach (j; 0 .. N) {
                if (A[i][j] == 0) {
                    continue;
                }

                isOk &= A[i][j] == B[i][j];
            }
        }

        if (isOk) {
            writeln("Yes");
            return;
        }

        A = rotate(A);
    }

    writeln("No");
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
