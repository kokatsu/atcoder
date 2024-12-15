import std;

int iceil(int x, int y) {
    return (x + y - 1) / y;
}

void main() {
    int L, A, B, C, D;
    readf("%d\n%d\n%d\n%d\n%d\n", L, A, B, C, D);

    int res = L - max(iceil(A, C), iceil(B, D));
    res.writeln;
}
