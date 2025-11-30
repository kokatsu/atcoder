import std;

enum int L = 8;

void main() {
    dchar[][] S = new dchar[][](L);
    foreach (i; 0 .. L) {
        readf("%s\n", S[i]);
    }

    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            if (S[i][j] != '#') {
                continue;
            }

            foreach (k; 0 .. L) {
                if (S[i][k] == '.') {
                    S[i][k] = '@';
                }

                if (S[k][j] == '.') {
                    S[k][j] = '@';
                }
            }
        }
    }

    int res;
    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            if (S[i][j] == '.') {
                ++res;
            }
        }
    }

    res.writeln;
}
