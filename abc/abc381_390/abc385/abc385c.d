import std;

enum int M = 3000;

void main() {
    int N;
    readf("%d\n", N);

    auto H = readln.chomp.split.to!(int[]);

    H[] -= 1;

    auto D = new int[][](M);
    auto B = new bool[][](M, M);
    foreach (i, h; H) {
        D[h] ~= i.to!int;
        B[h][i] = true;
    }

    int res = 1;
    foreach (i; 0 .. M) {
        auto L = D[i].length.to!int;
        if (L < 2) {
            continue;
        }

        foreach (j; 0 .. L - 1) {
            foreach (k; j + 1 .. L) {
                int d = D[i][k] - D[i][j];
                int count = 2, index = D[i][k];
                while (index < M) {
                    if (!B[i][index + d]) {
                        break;
                    }
                    ++count, index += d;
                }

                res = max(res, count);
            }
        }
    }

    res.writeln;
}
