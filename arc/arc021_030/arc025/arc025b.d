import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto C = new int[][](H);
    foreach (i; 0 .. H) C[i] = readln.chomp.split.to!(int[]);

    auto S = new int[][](H+1, W+1);
    foreach (i; 0 .. H) {
        foreach (j, x; C[i]) {
            S[i+1][j+1] = S[i+1][j] + ((i + j) % 2 == 1 ? x : -x);
        }

        foreach (j; 0 .. W+1) {
            S[i+1][j] += S[i][j];
        }
    }

    int res;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            foreach (k; i+1 .. H+1) {
                foreach (l; j+1 .. W+1) {
                    if (S[i][j] == S[k][j] + S[i][l] - S[k][l]) {
                        res = max(res, (k-i)*(l-j));
                    }
                }
            }
        }
    }

    res.writeln;
}