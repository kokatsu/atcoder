import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (i; 0 .. T) {
        long R, G, B;
        readf("%d %d %d\n", R, G, B);

        long res = long.max;
        if (G - R >= 0 && (G - R) % 3 == 0) {
            res = min(res, G);
        }
        if (B - R >= 0 && (B - R) % 3 == 0) {
            res = min(res, B);
        }
        if (B - G >= 0 && (B - G) % 3 == 0) {
            res = min(res, B);
        }
        if (R - G >= 0 && (R - G) % 3 == 0) {
            res = min(res, R);
        }
        if (R - B >= 0 && (R - B) % 3 == 0) {
            res = min(res, R);
        }
        if (G - B >= 0 && (G - B) % 3 == 0) {
            res = min(res, G);
        }

        if (res == long.max) {
            writeln(-1);
        }
        else {
            writeln(res);
        }
    }
}
