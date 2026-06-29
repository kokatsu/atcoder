import std;

void main() {
    int N;
    readf("%d\n", N);

    char[][][] L = new char[][][](N + 1);
    L[0] = [['#']];
    foreach (i; 1 .. N + 1) {
        L[i] = new char[][](3 ^^ i, 3 ^^ i);

        foreach (j; 0 .. 3) {
            foreach (k; 0 .. 3) {
                int d = 3 ^^ (i - 1);
                if (j == 1 && k == 1) {
                    foreach (x; 0 .. d) {
                        foreach (y; 0 .. d) {
                            L[i][j * d + x][k * d + y] = '.';
                        }
                    }
                }
                else {
                    foreach (x; 0 .. d) {
                        foreach (y; 0 .. d) {
                            L[i][j * d + x][k * d + y] = L[i - 1][x][y];
                        }
                    }
                }
            }
        }
    }

    string res = format("%(%-(%c%)\n%)", L[N]);
    res.writeln;
}
