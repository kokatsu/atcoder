import std;

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    int[] X = new int[](N);
    int[] Y = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", X[i], Y[i]);
    }

    auto XY = new bool[int][](H + 1);
    auto XC = new int[](H + 1);
    auto YX = new bool[int][](W + 1);
    auto YC = new int[](W + 1);
    foreach (i; 0 .. N) {
        XY[X[i]][Y[i]] = true;
        YX[Y[i]][X[i]] = true;
        ++XC[X[i]];
        ++YC[Y[i]];
    }

    int Q;
    readf("%d\n", Q);

    int[] R = new int[](Q);
    foreach (ref r; R) {
        int type, x;
        readf("%d %d\n", type, x);

        if (type == 1) {
            r = XC[x];
            foreach (y; XY[x].keys) {
                if (x in YX[y]) {
                    YX[y].remove(x);
                    --YC[y];
                }
            }
            XY[x].clear;
            XC[x] = 0;
        }
        else {
            r = YC[x];
            foreach (y; YX[x].keys) {
                if (x in XY[y]) {
                    XY[y].remove(x);
                    --XC[y];
                }
            }
            YX[x].clear;
            YC[x] = 0;
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
