import core.bitop : popcnt;
import std;

void main() {
    int H1, W1;
    readf("%d %d\n", H1, W1);

    auto A = new int[][](H1, W1);
    foreach (i; 0 .. H1) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    int H2, W2;
    readf("%d %d\n", H2, W2);

    auto B = new int[][](H2, W2);
    foreach (i; 0 .. H2) {
        B[i] = readln.chomp.split.to!(int[]);
    }

    auto H = 1 << H1, W = 1 << W1;
    foreach (i; 0 .. H) {
        if (i.popcnt != H2) {
            continue;
        }

        foreach (j; 0 .. W) {
            if (j.popcnt != W2) {
                continue;
            }

            int[] hlist;
            foreach (h; 0 .. H1) {
                if (i >> h & 1) {
                    hlist ~= h;
                }
            }

            int[] wlist;
            foreach (w; 0 .. W1) {
                if (j >> w & 1) {
                    wlist ~= w;
                }
            }

            bool isOk = true;
            foreach (k, h; hlist) {
                foreach (l, w; wlist) {
                    isOk &= A[h][w] == B[k][l];
                }
            }

            if (isOk) {
                writeln("Yes");
                return;
            }
        }
    }

    writeln("No");
}
