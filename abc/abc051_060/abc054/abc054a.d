import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int f(int x, int y) {
        if (x == y) return 0;
        else {
            if (x == 1) return 1;
            else if (y == 1) return -1;
            return x - y;
        }
    }

    int c = f(A, B);

    string res = "Draw";
    if (c > 0) res = "Alice";
    if (c < 0) res = "Bob";

    res.writeln;
}