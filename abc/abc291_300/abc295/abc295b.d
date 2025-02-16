import std;

void main() {
    int R, C;
    readf("%d %d\n", R, C);

    auto B = new dchar[][](R);
    foreach (i; 0 .. R) {
        readf("%s\n", B[i]);
    }

    auto res = new dchar[][](R, C);
    foreach (i; 0 .. R) {
        foreach (j; 0 .. C) {
            if (res[i][j] == dchar.init) {
                res[i][j] = B[i][j];
            }

            if (B[i][j] == '.' || B[i][j] == '#') {
                continue;
            }

            int N = B[i][j] - '0';
            foreach (k; 0 .. R) {
                foreach (l; 0 .. C) {
                    int M = abs(i - k) + abs(j - l);
                    if (M > N) {
                        continue;
                    }

                    res[k][l] = '.';
                }
            }
        }
    }

    writefln("%(%(%c%)\n%)", res);
}
