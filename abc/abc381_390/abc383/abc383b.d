import std;

void main() {
    int H, W, D;
    readf("%d %d %d\n", H, W, D);

    Tuple!(int, int)[] coords;
    string[] S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j, s; S[i]) {
            if (s == '.') {
                coords ~= tuple(i, j.to!int);
            }
        }
    }

    int res;
    foreach (i, c1; coords) {
        bool[] U = new bool[](H * W);
        foreach (i1; 0 .. H) {
            if (abs(i1 - c1[0]) > D) {
                continue;
            }

            foreach (j1; 0 .. W) {
                if (abs(i1 - c1[0]) + abs(j1 - c1[1]) > D || S[i1][j1] == '#') {
                    continue;
                }

                U[i1 * W + j1] = true;
            }
        }

        foreach (c2; coords[i + 1 .. $]) {
            bool[] V = U.dup;

            foreach (i2; 0 .. H) {
                if (abs(i2 - c2[0]) > D) {
                    continue;
                }

                foreach (j2; 0 .. W) {
                    if (abs(i2 - c2[0]) + abs(j2 - c2[1]) > D || S[i2][j2] == '#') {
                        continue;
                    }

                    V[i2 * W + j2] = true;
                }
            }

            res = max(res, V.count(true).to!int);
        }
    }

    res.writeln;
}
