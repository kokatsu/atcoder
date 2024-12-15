import std;

void main() {
    int W, H, N;
    readf("%d %d %d\n", W, H, N);

    int res = W * H;
    auto rectangle = new bool[][](W, H);
    foreach (_; 0 .. N) {
        int x, y, a;
        readf("%d %d %d\n", x, y, a);

        int xs, xe = x, ys, ye = H;
        if (a == 2) {
            xs = x, xe = W;
        }
        if (a == 3) {
            xe = W, ye = y;
        }
        if (a == 4) {
            xe = W, ys = y, ye = H;
        }

        foreach (u; xs .. xe) {
            foreach (v; ys .. ye) {
                if (!rectangle[u][v]) {
                    --res;
                }
                rectangle[u][v] = true;
            }
        }
    }

    res.writeln;
}
