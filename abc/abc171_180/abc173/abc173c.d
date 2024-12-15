import std;

void main() {
    int H, W, K;
    readf("%d %d %d\n", H, W, K);

    auto c = new string[](H);
    foreach (i; 0 .. H)
        readf("%s\n", c[i]);

    int res;
    foreach (i; 0 .. 1 << H) {
        foreach (j; 0 .. 1 << W) {
            int cnt;

            foreach (k; 0 .. H) {
                if ((i >> k) & 1)
                    continue;

                foreach (l; 0 .. W) {
                    if ((j >> l) & 1)
                        continue;

                    if (c[k][l] == '#')
                        ++cnt;
                }
            }

            if (cnt == K)
                ++res;
        }
    }

    res.writeln;
}
