import std;

void main() {
    int h1, h2, h3, w1, w2, w3;
    readf("%d %d %d %d %d %d\n", h1, h2, h3, w1, w2, w3);

    int res;
    foreach (i; 1 .. h1) {
        foreach (j; 1 .. h1) {
            if (i + j >= h1) break;

            foreach (k; 1 .. h1) {
                if (i + j + k > h1) break;
                if (i + j + k < h1) continue;

                foreach (l; 1 .. w1) {
                    if (i + l >= w1) break;

                    foreach (m; 1 .. w1) {
                        if (i + l + m > w1) break;
                        if (i + l + m < w1) continue;

                        foreach (n; 1 .. w2) {
                            if (j + n >= w2) break;
                            if (l + n >= h2) break;

                            int a = h2 - l - n;
                            int b = w2 - j - n;

                            int c = h3 - b - m;
                            int d = w3 - a - k;

                            if (c > 0 && c == d) ++res;
                        }
                    }
                }
            }
        }
    }

    res.writeln;
}