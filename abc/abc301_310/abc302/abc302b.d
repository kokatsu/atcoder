import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) {
        S[i] = readln.chomp;
    }

    string L = "snuke", R = "ekuns";

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W - 4) {
            if (S[i][j .. j + 5] == L) {
                foreach (k; 0 .. 5) {
                    writeln(i + 1, " ", j + k + 1);
                }
                return;
            }
            else if (S[i][j .. j + 5] == R) {
                foreach_reverse (k; 0 .. 5) {
                    writeln(i + 1, " ", j + k + 1);
                }
                return;
            }
        }

        if (i < H - 4) {
            foreach (j; 0 .. W) {
                string T = "";
                foreach (k; 0 .. 5) {
                    T ~= S[i + k][j];
                }

                if (T == L) {
                    foreach (k; 0 .. 5) {
                        writeln(i + k + 1, " ", j + 1);
                    }
                    return;
                }
                else if (T == R) {
                    foreach_reverse (k; 0 .. 5) {
                        writeln(i + k + 1, " ", j + 1);
                    }
                    return;
                }
            }

            foreach (j; 0 .. W - 4) {
                string T = "";
                foreach (k; 0 .. 5) {
                    T ~= S[i + k][j + k];
                }

                if (T == L) {
                    foreach (k; 0 .. 5) {
                        writeln(i + k + 1, " ", j + k + 1);
                    }
                    return;
                }
                else if (T == R) {
                    foreach_reverse (k; 0 .. 5) {
                        writeln(i + k + 1, " ", j + k + 1);
                    }
                    return;
                }
            }

            foreach (j; 4 .. W) {
                string T = "";
                foreach (k; 0 .. 5) {
                    T ~= S[i + k][j - k];
                }

                if (T == L) {
                    foreach (k; 0 .. 5) {
                        writeln(i + k + 1, " ", j - k + 1);
                    }
                    return;
                }
                else if (T == R) {
                    foreach_reverse (k; 0 .. 5) {
                        writeln(i + k + 1, " ", j - k + 1);
                    }
                    return;
                }
            }
        }
    }
}
