import std;

void main() {
    int H, W, Si, Sj;
    readf("%d %d\n%d %d\n", H, W, Si, Sj);

    string[] C = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", C[i]);
    }

    string X;
    readf("%s\n", X);

    int u = Si - 1, v = Sj - 1;
    foreach (x; X) {
        if (x == 'L') {
            if (v > 0 && C[u][v - 1] == '.') {
                --v;
            }
        }
        else if (x == 'R') {
            if (v < W - 1 && C[u][v + 1] == '.') {
                ++v;
            }
        }
        else if (x == 'U') {
            if (u > 0 && C[u - 1][v] == '.') {
                --u;
            }
        }
        else {
            if (u < H - 1 && C[u + 1][v] == '.') {
                ++u;
            }
        }
    }

    string res = format("%d %d", u + 1, v + 1);
    res.writeln;
}
