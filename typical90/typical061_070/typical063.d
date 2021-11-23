import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto P = new int[][](H);
    foreach (i; 0 .. H) {
        P[i] = readln.chomp.split.to!(int[]);
    }

    int res;
    foreach (i; 1 .. 1<<H) {
        int[int] list;

        foreach (j; 0 .. W) {
            int num, cnt;
            bool isGood = true;

            foreach (k; 0 .. H) {
                if (!((i >> k) & 1)) {
                    continue;
                }

                ++cnt;

                if (num == 0) {
                    num = P[k][j];
                }
                else {
                    if (num != P[k][j]) {
                        isGood = false;
                        break;
                    }
                }
            }

            if (isGood) {
                list[num] += cnt;
            }
        }

        foreach (v; list.byValue) {
            res = max(res, v);
        }
    }

    res.writeln;
}