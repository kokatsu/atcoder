import std;

void main() {
    long H, W, M;
    readf("%d %d %d\n", H, W, M);

    auto Hcnts = new long[](H + 1), Wcnts = new long[](W + 1);
    long[long] list;
    foreach (i; 0 .. M) {
        long h, w;
        readf("%d %d\n", h, w);

        ++Hcnts[h], ++Wcnts[w];
        ++list[h * W + w];
    }

    auto Hpos = iota(H + 1).array, Wpos = iota(W + 1).array;
    zip(Hcnts, Hpos).sort!"a[0] > b[0]";
    zip(Wcnts, Wpos).sort!"a[0] > b[0]";

    long res = Hcnts[0] + Wcnts[0] - 1;
    foreach (i, hc; Hcnts) {
        if (hc != Hcnts[0])
            break;

        foreach (j, wc; Wcnts) {
            if (wc != Wcnts[0])
                break;

            long num = hc + wc;

            long pos = Hpos[i] * W + Wpos[j];
            if (pos in list)
                --num;

            if (num > res) {
                num.writeln;
                return;
            }
        }
    }

    res.writeln;
}
