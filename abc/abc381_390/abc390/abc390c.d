import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int Hn = H, Hx, Wn = W, Wx;
    string[] S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j; 0 .. W) {
            if (S[i][j] == '#') {
                Hn = min(Hn, i);
                Hx = max(Hx, i);
                Wn = min(Wn, j);
                Wx = max(Wx, j);
            }
        }
    }

    bool ok = true;
    for (int i = Hn; i <= Hx; i++) {
        for (int j = Wn; j <= Wx; j++) {
            if (S[i][j] == '.') {
                ok = false;
                break;
            }
        }

        if (!ok) {
            break;
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
