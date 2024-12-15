import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    dchar f(int a, int b) {
        if (a < b) {
            return '<';
        }
        else if (a > b) {
            return '>';
        }
        return '=';
    }

    dchar res = f(A, B);
    if ((A < 0 || B < 0) && C % 2 == 0) {
        res = f(A.abs, B.abs);
    }

    res.writeln;
}
