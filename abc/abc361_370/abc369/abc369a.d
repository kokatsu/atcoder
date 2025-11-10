import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = 1, D = abs(A - B);
    if (D > 0) {
        res += D % 2 == 0 ? 2 : 1;
    }

    res.writeln;
}
