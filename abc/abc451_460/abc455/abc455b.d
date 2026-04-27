import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    string[] S = new string[](H);
    foreach (ref s; S) {
        readfln("%s", s);
    }

    int res;
    foreach (h1; 0 .. H) {
        foreach (h2; h1 .. H) {
            foreach (w1; 0 .. W) {
                foreach (w2; w1 .. W) {
                    bool ok = true;
                    foreach (i; h1 .. h2 + 1) {
                        foreach (j; w1 .. w2 + 1) {
                            ok &= S[i][j] == S[h1 + h2 - i][w1 + w2 - j];
                        }
                    }

                    if (ok) {
                        ++res;
                    }
                }
            }
        }
    }

    res.writeln;
}
