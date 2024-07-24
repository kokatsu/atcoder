import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    int f(int x) {
        int ret = 1, d = 2;
        while (d * d <= x) {
            int num = 1;
            while (x % d == 0) {
                x /= d;
                ++num;
            }
            ret *= num;
            d += d == 2 ? 1 : 2;
        }

        if (x > 1) {
            ret *= 2;
        }

        return ret;
    }

    int u = f(X), v = f(Y);

    string res = "Z";
    if (u > v) res = "X";
    if (u < v) res = "Y";

    res.writeln;
}