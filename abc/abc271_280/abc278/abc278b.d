import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    while (true) {
        int h1 = H / 10, h2 = H % 10;
        int w1 = W / 10, w2 = W % 10;

        int h = h1 * 10 + w1, w = h2 * 10 + w2;

        bool isOK = (h <= 23 && w <= 59);

        if (isOK)
            break;

        ++W;
        if (W >= 60) {
            H = (H + 1) % 24, W = 0;
        }
    }

    writeln(H, " ", W);
}
