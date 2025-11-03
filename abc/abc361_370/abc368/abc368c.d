import std;

void main() {
    int N;
    readf("%d\n", N);

    long[] H = readln.chomp.split.to!(long[]);

    long res;
    foreach (ref h; H) {
        long R = res % 3;
        if (R == 1) {
            if (h == 1) {
                --h;
                ++res;
            }
            else {
                h = max(0, h - 4);
                res += 2;
            }
        }
        else if (R == 2) {
            h = max(0, h - 3);
            ++res;
        }

        long D = h / 5, M = h % 5, C = 3;
        if (M < 3) {
            C = M;
        }

        res += D * 3 + C;
    }

    res.writeln;
}
