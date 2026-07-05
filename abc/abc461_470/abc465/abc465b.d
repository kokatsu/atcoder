import std;

void main() {
    int X, Y, L, R, A, B;
    readfln("%d %d %d %d %d %d", X, Y, L, R, A, B);

    int res;
    foreach (i; A .. B) {
        if (L <= i && i < R) {
            res += X;
        }
        else {
            res += Y;
        }
    }

    res.writeln;
}
