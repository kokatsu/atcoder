import std;

void main() {
    int H, W, N;
    string T;
    readf("%d %d %d\n%s\n", H, W, N, T);

    string[] S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);
    }

    int res;
    foreach (i; 1 .. H - 1) {
        foreach (j; 1 .. W - 1) {
            if (S[i][j] == '#') {
                continue;
            }

            bool isOk = true;
            int x = i, y = j;
            foreach (t; T) {
                if (t == 'L') {
                    --y;
                }
                else if (t == 'R') {
                    ++y;
                }
                else if (t == 'U') {
                    --x;
                }
                else {
                    ++x;
                }

                if (S[x][y] == '#') {
                    isOk = false;
                    break;
                }
            }

            if (isOk) {
                ++res;
            }
        }
    }

    res.writeln;
}
