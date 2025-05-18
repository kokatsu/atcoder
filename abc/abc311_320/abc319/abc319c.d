import std;

void main() {
    auto c = new int[][](3);
    foreach (i; 0 .. 3) {
        c[i] = readln.chomp.split.to!(int[]);
    }

    int[][] M = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6],
    ];

    auto P = 9.iota.permutations;
    int C;
    foreach (p; P) {
        bool flag;
        foreach (m; M) {
            foreach (q; m.permutations) {
                if (c[q[0] / 3][q[0] % 3] == c[q[1] / 3][q[1] % 3] && p[q[0]] < p[q[2]] && p[q[1]] < p[q[2]]) {
                    flag = true;
                    break;
                }

                if (flag) {
                    break;
                }
            }

            if (flag) {
                break;
            }
        }

        if (!flag) {
            ++C;
        }
    }

    real res = C.to!real / P.array.length;
    writefln("%.20f", res);
}
