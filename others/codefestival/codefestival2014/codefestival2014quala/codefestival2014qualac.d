import std;

int getCountLeapYears(int x) {
    return x / 4 - x / 100 + x / 400;
}

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = getCountLeapYears(B) - getCountLeapYears(A-1);
    res.writeln;
}