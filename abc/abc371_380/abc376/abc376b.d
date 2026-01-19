import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    int f(int x, int y, int z) {
        if (x > y) {
            swap(x, y);
        }

        if (x < z && z < y) {
            return N + x - y;
        }

        return y - x;
    }

    int res, L = 1, R = 2;
    foreach (_; 0 .. Q) {
        char H;
        int T;
        readfln("%c %d", H, T);

        if (H == 'L') {
            res += f(L, T, R);
            L = T;
        }
        else {
            res += f(R, T, L);
            R = T;
        }
    }

    res.writeln;
}
